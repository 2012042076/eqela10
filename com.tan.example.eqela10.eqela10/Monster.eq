
/*
 * Monster
 * Created by Eqela Studio 2.0b7.4
 */

public class Monster: SEEntity
{
		SESprite monster;
		SESprite text;
		int w;
		int h;
		int mx;
		int my;
		int p_x;
		int p_y;
		
		public void initialize(SEResourceCache rsc)
		{
			base.initialize(rsc);
			w = get_scene_width();
			h = get_scene_height();
			
			rsc.prepare_image("mycookie","cookie",0.2*w);
			monster=add_sprite_for_image(SEImage.for_resource("mycookie"));
		
			monster.move(Math.random(0,w),Math.random(0,h));

			//Text
			rsc.prepare_font("myfont","Arial bold color=white",100);
			text = add_sprite_for_text(" ","myfont");
		}
		public void tick(TimeVal now, double delta)
		{
			p_x = MainScene.x;
			p_y = MainScene.y;
			mx = monster.get_x();
			my = monster.get_y();
			base.tick(now, delta);
			monster.move(mx+(p_x-mx)/Math.random(50,500), my+(p_y-my)/Math.random(50,500));

			if((mx/p_x)==1 && (my/p_y)==1)
			{
            	text.set_text("GAME OVER!");
            	text.move(0.35*w, 0.45*h);
        	}
		}
		public void cleanup()
		{
			base.cleanup();
		}
}
