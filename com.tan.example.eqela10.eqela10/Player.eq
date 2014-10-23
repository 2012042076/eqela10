
/*
 * Player
 * Created by Eqela Studio 2.0b7.4
 */

public class Player: SEEntity
{
		SESprite player;
		int w;
		int h;
		
		public void initialize(SEResourceCache rsc)
		{
			base.initialize(rsc);
			w = get_scene_width();
			h = get_scene_height();
	
			rsc.prepare_image("myc","c",0.1*w);
			player=add_sprite_for_image(SEImage.for_resource("myc"));
			player.move(0.5*w,0.5*h);
		}
		public void tick(TimeVal now, double delta)
		{
			base.tick(now, delta);
			player.move(MainScene.x,MainScene.y); //owned by another class so need to call MainScene
		}
		public void cleanup()
		{
			base.cleanup();
		}
}

