package uk.co.zutty.ld25
{
	import net.flashpunk.World;
	
	public class GameWorld extends World {
		public function GameWorld() {
			super();
			
			var guy:Guy = new Guy();
			guy.x = 400;
			guy.y = 300;
			add(guy);
		}
	}
}