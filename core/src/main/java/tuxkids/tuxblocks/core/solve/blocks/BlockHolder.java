package tuxkids.tuxblocks.core.solve.blocks;

import tripleplay.util.Colors;
import tuxkids.tuxblocks.core.layers.ImageLayerLike;
import tuxkids.tuxblocks.core.solve.blocks.layer.BlockLayer;
import tuxkids.tuxblocks.core.solve.blocks.layer.EmptyBlockLayer;
import tuxkids.tuxblocks.core.solve.markup.BaseRenderer;
import tuxkids.tuxblocks.core.solve.markup.Renderer;
import tuxkids.tuxblocks.core.utils.HashCode;
import tuxkids.tuxblocks.core.utils.Persistable;
import tuxkids.tuxblocks.core.utils.Persistable.Constructor;

public class BlockHolder extends BaseBlock {

	@Override
	protected void initSpriteImpl() {
		super.initSpriteImpl();
		clearPreview();
	}
	
	@Override
	public void clearPreview() {
		groupLayer.setAlpha(0.5f);
	}

	@Override
	protected String text() {
		return " ";
	}
	
	@Override
	public int color() {
		return Colors.WHITE;
	}

	@Override
	public boolean canRelease(boolean open) {
		return false;
	}
	
	@Override
	protected boolean shouldShowPreview(boolean open) {
		return false;
	}
	
	@Override
	public void addFields(HashCode hashCode) { }
	
	@Override
	protected BlockLayer generateImage(String text) {
		return new EmptyBlockLayer(10, 10);
	}
	
	@Override
	public boolean canAccept(Block sprite) {
		if (sprite instanceof BaseBlock) {
			return true;
		} else if (sprite instanceof HorizontalModifierBlock) {
			return true;
		}
		return false;
	}
	
	@Override
	public void addBlockListener(BlockListener listener) {
		
	}

	@Override
	public Block inverse() {
		return null;
	}
	
	@Override
	protected Renderer createRendererWith(BaseBlock myCopy, Block spriteCopy) {
		spriteCopy.performAction(new Action() {
			@Override
			public void run(Sprite sprite) {
				sprite.setPreviewAdd(true);
			}
		});
		if (spriteCopy instanceof HorizontalModifierBlock) {
			return ((HorizontalModifierBlock) spriteCopy).getProxy(false).createRenderer();
		} else if (spriteCopy instanceof BaseBlock) {
			return ((BaseBlock) spriteCopy).createRenderer();
		} else if (spriteCopy instanceof VerticalModifierBlock) {
			return new BaseRenderer("0"); // when removing excess multipliers
		}
		return null;
	}

	@Override
	protected Sprite copyChild() {
		return new BlockHolder();
	}

	public static Constructor constructor() {
		return new Constructor() {
			@Override
			public Persistable construct() {
				return new BlockHolder();
			}
		};
	}
}
