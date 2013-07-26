package tuxkids.tuxblocks.core.defense.walker.buff;

public class Frozen extends Buff {

	@Override
	protected int lifespan() {
		return 1000;
	}

	@Override
	public float modifySpeed(float dt) {
		return dt * 0.5f;
	}
}
