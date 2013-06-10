package tuxkids.tuxblocks.core.solve;

import static playn.core.PlayN.graphics;
import playn.core.CanvasImage;
import playn.core.Color;
import playn.core.ImageLayer;
import playn.core.Pointer.Event;
import playn.core.Pointer.Listener;
import playn.core.util.Clock;
import pythagoras.f.Point;
import tripleplay.game.ScreenStack;
import tuxkids.tuxblocks.core.EquationSprite;
import tuxkids.tuxblocks.core.screen.GameScreen;
import tuxkids.tuxblocks.core.solve.blocks.BaseBlock;
import tuxkids.tuxblocks.core.solve.blocks.Block;
import tuxkids.tuxblocks.core.solve.blocks.ModifierBlock;
import tuxkids.tuxblocks.core.solve.expression.Expression;
import tuxkids.tuxblocks.core.solve.expression.Number;
import tuxkids.tuxblocks.core.solve.expression.Variable;
import tuxkids.tuxblocks.core.utils.Debug;

public class SolveScene extends GameScreen implements Listener {
	
	private BaseBlock leftHandSide, rightHandSide;
	private BaseBlock draggingFrom, draggingTo;
	private ModifierBlock dragging;
	private Point dragOffset = new Point();
	private EquationSprite equationSprite;
	
	public SolveScene(ScreenStack screens) {
		super(screens);
	}
	
	@Override
	public void wasAdded() {
		
		CanvasImage background = graphics().createImage(graphics().width(), graphics().height());
		background.canvas().setFillColor(Color.rgb(255, 255, 255));
		background.canvas().fillRect(0, 0, graphics().width() / 2, graphics().height());
		background.canvas().setFillColor(Color.rgb(100, 100, 100));
		background.canvas().fillRect(graphics().width() / 2, 0, graphics().width() / 2, graphics().height());
		layer.add(graphics().createImageLayer(background));

		Expression e = new Variable("x").plus(5).over(3).plus(2).times(2);

		leftHandSide = Block.createBlock(e);
		leftHandSide.getGroupLayer().setTy(graphics().height());
		leftHandSide.getGroupLayer().setTx(graphics().width() / 4 - leftHandSide.getGroupWidth() / 2);
		layer.add(leftHandSide.getGroupLayer());
		leftHandSide.getLastModifier().getSprite().addListener(this);
		
		rightHandSide = Block.createBlock(new Number(5));
		rightHandSide.getGroupLayer().setTy(graphics().height());
		rightHandSide.getGroupLayer().setTx(3 * graphics().width() / 4 - leftHandSide.getGroupWidth() / 2);
		layer.add(rightHandSide.getGroupLayer());
		//rightHandSide.getSprite().addListener(this);

		equationSprite = new EquationSprite(leftHandSide, rightHandSide);
		refreshEquationSprite();
	}

	private void refreshEquationSprite() {
		equationSprite.refresh(dragging, dragging != null && dragging.isInverted() ? 
				draggingTo : draggingFrom);
		ImageLayer layer = equationSprite.getLayer();
		this.layer.add(layer);
		layer.setTy(10);
		layer.setTx(graphics().width() / 2);
	}
	
	@Override
	public void update(int delta) {
	}

	@Override
	public void paint(Clock clock) {
		
	}
	
	@Override
	public void onPointerStart(Event event) {
		if (dragging != null) return;
		dragging = null;
		draggingFrom = null;
		if (event.hit() != null) {
			if (leftHandSide.hasModifier() &&
					leftHandSide.getLastModifier().getSprite() == event.hit()) {
				draggingFrom = leftHandSide;
				draggingTo = rightHandSide;						
			} else if (rightHandSide.hasModifier() &&
					rightHandSide.getLastModifier().getSprite() == event.hit()) {
				draggingFrom = rightHandSide;
				draggingTo = leftHandSide;
			}
			if (draggingFrom != null) {
				dragging = draggingFrom.pop();
				if (draggingFrom.hasModifier()) {
					draggingFrom.getLastModifier().getSprite().addListener(this);
				}
				dragOffset.set(
						draggingFrom.getGroupLayer().tx() + dragging.getSprite().tx() - event.x(), 
						draggingFrom.getGroupLayer().ty() + dragging.getSprite().ty() - event.y());
				dragging.getSprite().setTranslation(event.x() + dragOffset.x, event.y() + dragOffset.y);
				layer.add(dragging.getSprite());
				refreshEquationSprite();
			}
		}
	}

	@Override
	public void onPointerEnd(Event event) {
		if (dragging != null) {
			BaseBlock dragStop;
			if (dragging.isInverted()) {
				dragStop = draggingTo;
			} else {
				dragStop = draggingFrom;
			}
			layer.remove(dragging.getSprite());
			dragStop.addModifier(dragging.getModifier());
			dragStop.getLastModifier().getSprite().addListener(this);
			dragging = null;
			refreshEquationSprite();
		}
		dragging = null;
	}

	@Override
	public void onPointerDrag(Event event) {
		if (dragging != null) {
			dragging.getSprite().setTranslation(
					event.x() + dragOffset.x,
					event.y() + dragOffset.y);
			float distanceX = Math.abs(dragging.getSprite().tx() + dragging.getSprite().width() / 2 - (draggingFrom.getGroupLayer().tx() + draggingFrom.getGroupWidth() / 2));
			if (!dragging.isInverted() && distanceX > graphics().width() / 4 + 5) {
				dragging.invert();
			} else if (dragging.isInverted() && distanceX < graphics().width() / 4 - 5) {
				dragging.invert();
			}
			refreshEquationSprite();
		}
	}

	@Override
	public void onPointerCancel(Event event) {
		// TODO Auto-generated method stub

	}

}