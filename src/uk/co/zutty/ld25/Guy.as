package uk.co.zutty.ld25
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Guy extends Entity {
		
		private static const SPEED:Number = 3;
		
		[Embed(source = 'assets/guy.png')]
		private static const GUY_IMAGE:Class;
		
		public function Guy() {
			super();
			
			graphic = new Image(GUY_IMAGE);
			
			Input.define("up", Key.W, Key.UP);
			Input.define("down", Key.S, Key.DOWN);
			Input.define("left", Key.A, Key.LEFT);
			Input.define("right", Key.D, Key.RIGHT);
		}
		
		override public function update():void {
			super.update();
			
			if(Input.check("up")) {
				y -= SPEED;
			} else if(Input.check("down")) {
				y += SPEED;
			}
			if(Input.check("left")) {
				x -= SPEED;
			} else if(Input.check("right")) {
				x += SPEED;
			}
		}
	}
}