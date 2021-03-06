package tuxkids.tuxblocks.core.solve;

import playn.core.Image;
import playn.core.PlayN;
import playn.core.Pointer.Event;
import tripleplay.game.ScreenStack;
import tuxkids.tuxblocks.core.Audio;
import tuxkids.tuxblocks.core.Constant;
import tuxkids.tuxblocks.core.GameState;
import tuxkids.tuxblocks.core.GameState.Stat;
import tuxkids.tuxblocks.core.defense.GameHeaderLayer;
import tuxkids.tuxblocks.core.screen.BaseScreen;
import tuxkids.tuxblocks.core.solve.blocks.Sprite.SimplifyListener;
import tuxkids.tuxblocks.core.solve.markup.Renderer;
import tuxkids.tuxblocks.core.tutorial.Tutorial;
import tuxkids.tuxblocks.core.tutorial.Tutorial.Tag;
import tuxkids.tuxblocks.core.tutorial.Tutorial.Trigger;
import tuxkids.tuxblocks.core.widget.Button;
import tuxkids.tuxblocks.core.widget.Button.OnReleasedListener;
import tuxkids.tuxblocks.core.widget.HeaderLayer;

/** 
 * Handles solving equations in-game.
 */
public class SolveScreen extends EquationScreen {
	
	private Button buttonBack;
	private Image buttonImageOk, buttonImageBack;
	
	// remember attributes of a simplify operation so
	// we can act on them when the player returns from the
	// NumberSelectScreen
	private SimplifyListener simplifyCallback;
	private boolean simplifyCorrect;
	private int simplifyLevel;
	private Stat simplifyStat;
	
	@Override
	protected float equationXPercent() {
		return 0.6f;
	}
	
	@Override
	protected int exitTime() {
		return 2000;
	}
	
	public SolveScreen(final ScreenStack screens, GameState gameState) {
		super(screens, gameState);

		// two images for the back button - one for if it's solved, one for not
		buttonImageBack = PlayN.assets().getImage(Constant.BUTTON_DOWN);
		buttonImageOk = PlayN.assets().getImage(Constant.BUTTON_OK);
		buttonBack = header.addLeftButton(buttonImageBack);
		buttonBack.setNoSound();
		buttonBack.setOnReleasedListener(new OnReleasedListener() {
			@Override
			public void onRelease(Event event, boolean inButton) {
				if (inButton) popThis();
			}
		});
		registerHighlightable(buttonBack, Tag.Solve_Ok);
		layer.add(buttonBack.layerAddable());
		
		Button buttonReset = header.addRightButton(Constant.BUTTON_RESET);
		buttonReset.setPosition(width() - buttonReset.width() * 0.6f, header.height() / 2);
		registerHighlightable(buttonReset, Tag.Solve_Reset);
		buttonReset.setOnReleasedListener(new OnReleasedListener() {
			@Override
			public void onRelease(Event event, boolean inButton) {
				if (inButton) reset();
			}
		});
		layer.add(buttonReset.layerAddable());
	}
	
	@Override
	protected Trigger wasShownTrigger() {
		return Trigger.Solve_Shown;
	}
	
	@Override 
	protected HeaderLayer createHeader() {
		return new GameHeaderLayer(this, width()) {
			@Override
			protected void createWidgets() {
				createBars();
				createTimer();
			}
		}; 
	}
	
	@Override
	protected void popThis() {
		popThis(screens.slide().up());
		if (controller.solved()) {
			Audio.se().play(Constant.SE_SUCCESS);
		} else {
			Audio.se().play(Constant.SE_BACK);
		}
	}
	
	@Override
	public void update(int delta) {
		super.update(delta);
		if (simplifyCorrect && !entering()) {
			// if we just correctly simplified and we're fully entered...
			// tell the block it was simplified
			simplifyCallback.wasSimplified(true);
			if (simplifyStat != null) {
				// add experience for the simplification
				state.addExpForSolving(simplifyStat, simplifyLevel);
			}
			// can clear simplify state
			clearSolve();
		}
		if (buttonBack.image() != buttonImageOk && controller.solved()) {
			Tutorial.trigger(Trigger.Solve_Solved);
		}
		if (controller.solved()) {
			buttonBack.setImage(buttonImageOk);
		} else {
			buttonBack.setImage(buttonImageBack);
		}
		
	}
	
	private void clearSolve() {
		simplifyCorrect = false;
		simplifyCallback = null;
		simplifyStat = null;
		simplifyLevel = -1;
	}

	// called from BlockController
	@Override
	public void showNumberSelectScreen(Renderer problem, int answer, int startNumber, 
			Stat stat, int level, SimplifyListener callback) {
		if (level > state.getStatLevel(stat)) {
			// try to simplify
			NumberSelectScreen nss = new NumberSelectScreen(screens, state, problem, answer);
			nss.setFocusedNumber(startNumber);
			// store the callback info for when the player returns
			simplifyCallback = callback;
			simplifyCorrect = false;
			simplifyStat = stat;
			simplifyLevel = level;
			pushScreen(nss, screens.slide().left());
		} else {
			// if they're high enough level, simply solve the problem
			callback.wasSimplified(true);
		}
	}

	@Override
	protected void onChildScreenFinished(BaseScreen screen) {
		super.onChildScreenFinished(screen);
		if (screen instanceof NumberSelectScreen) {
			NumberSelectScreen nss = (NumberSelectScreen) screen;
			if (nss.hasCorrectAnswer()) {
				simplifyCorrect = true;
				// if they had a mistake when simplifying, don't give experience
				if (!nss.noMistakes()) simplifyStat = null;
				Tutorial.trigger(Trigger.Solve_SimplifiedSuccess);
			} else {
				// tell the blocks the simplify failed
				simplifyCallback.wasSimplified(false);
				clearSolve();
			}
		}
	}
}
