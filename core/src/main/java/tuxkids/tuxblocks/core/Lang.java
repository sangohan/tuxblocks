package tuxkids.tuxblocks.core;

import playn.core.Image;
import playn.core.PlayN;
import playn.core.Json.Object;
import playn.core.json.JsonParserException;
import playn.core.util.Callback;
import tuxkids.tuxblocks.core.utils.Formatter;
import tuxkids.tuxblocks.core.utils.PlayNObject;

public class Lang extends PlayNObject {
	
	public enum Langauge {
		EN("English", "en"), 
		FR("Français", "fr"), 
		PA("ਪੰਜਾਬੀ", "pa", "Raavi");

		private String name, code, font;
		
		private Langauge(String name, String code) {
			this(name, code, "Arial");
		}
		
		private Langauge(String name, String code, String font) {
			this.name = name;
			this.code = code;
			this.font = font;
		}
		
		public String fullName() { return name; }		
		public String code() { return code; }
		public String font() { return font; }

		@Override
		public String toString() {
			return code;
		}
	}
	
	private final static String TEXT_PATH = "text/";
	private final static String STRINGS_PATH = "Strings.json";
	private final static Langauge DEFAULT_LANGUAGE = Langauge.EN;
	
	private static Langauge language = DEFAULT_LANGUAGE;
	private static Object dictionary;
	private static Object defaultDictionary;
	
	public static Langauge language() {
		return language;
	}

	public static String font() {
		return language.font;
	}
	
	public static boolean loaded() {
		return dictionary != null;
	}
	
	public static void clear() {
		language = DEFAULT_LANGUAGE;
		dictionary = null;
		defaultDictionary = null;
	}
	
	public static void setLanguage(final Langauge language, final Callback<Void> callback) {
		dictionary = null;
		if (defaultDictionary == null) {
			loadLangauge(DEFAULT_LANGUAGE, new Callback<Object>() {
				@Override
				public void onSuccess(Object dictionary) {
					defaultDictionary = dictionary;
					setLanguage(language, callback);
				}

				@Override
				public void onFailure(Throwable cause) {
					callback.onFailure(cause);
				}
			});
			return;
		}
		
		if (language == DEFAULT_LANGUAGE) {
			dictionary = defaultDictionary;
			Lang.language = language;
			callback.onSuccess(null);
		} else {
			loadLangauge(language, new Callback<Object>() {
				@Override
				public void onSuccess(Object result) {
					dictionary = result;
					Lang.language = language;
					callback.onSuccess(null);
				}

				@Override
				public void onFailure(Throwable cause) {
					callback.onFailure(cause);
				}
			});
		}
	}
	
	private static void loadLangauge(final Langauge language, final Callback<Object> callback) {
		assets().getText(TEXT_PATH + language + "/" + STRINGS_PATH, new Callback<String>() {
			@Override
			public void onSuccess(String result) {
				try {
					Object dictionary = PlayN.json().parse(result);
					callback.onSuccess(dictionary);
				} catch (JsonParserException e) {
					callback.onFailure(e);
				}
			}

			@Override
			public void onFailure(Throwable cause) {
				callback.onFailure(cause);
			}
		});
	}
	
	public static void getText(final String path, final Callback<String> callback) {
		assets().getText(TEXT_PATH + language + "/" + path, new Callback<String>() {
			@Override
			public void onSuccess(String result) {
				callback.onSuccess(result);
			}

			@Override
			public void onFailure(Throwable cause) {
				assets().getText(TEXT_PATH + DEFAULT_LANGUAGE + "/" + path, callback);
			}
		});
	}
	
	public static String getString(String key) {
		return getString(null, key);
	}
	
	public static String getString(String domain, String key) {
		String result = getString(dictionary, domain, key);
		if (result != null) return result;
		result = getString(defaultDictionary, domain, key);
		if (result == null) {
			PlayN.log().warn(Formatter.format(
					"No value found for key '%s%s' in '%s%s/Strings.json' or the default '%s%s/Strings.json'.", 
					domain == null ? "" : domain + ":", key, TEXT_PATH, language, TEXT_PATH, DEFAULT_LANGUAGE));
		}
		return result;
	}
	
	private static String getString(Object dictionary, String domain, String key) {
		if (dictionary == null) return null;
		if (domain == null) {
			return dictionary.getString(key);
		} else {
			Object dic = dictionary.getObject(domain);
			if (dic == null) return null;
			return dic.getString(key);
		}
	}
	
	public static void getImage(final String path, final Callback<Image> callback) {
		Image image = assets().getImage(Constant.IMAGE_PATH + language + "/" + path);
		image.addCallback(new Callback<Image>() {
			@Override
			public void onSuccess(Image result) {
				callback.onSuccess(result);
			}

			@Override
			public void onFailure(Throwable cause) {
				assets().getImage(Constant.IMAGE_PATH + DEFAULT_LANGUAGE + "/" + path).addCallback(callback);
			}
		});
	}
}
