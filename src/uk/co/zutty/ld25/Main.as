package uk.co.zutty.ld25
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine {
		public function Main() {
			super(800, 600, 60, true);
			
			FP.world = new GameWorld();
		}
	}
}