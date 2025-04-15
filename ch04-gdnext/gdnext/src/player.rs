use godot::classes::{ISprite2D, Sprite2D};
use godot::prelude::*;

#[derive(GodotClass)]
#[class(base=Sprite2D)]
struct Player {
    speed: f64,
    angular_speed: f64,

    base: Base<Sprite2D>,
}

#[godot_api]
impl ISprite2D for Player {
    fn init(base: Base<Sprite2D>) -> Self {
        godot_print!("-- player init --");
        Self {
            speed: 400.0,
            angular_speed: std::f64::consts::PI,
            base,
        }
    }
    fn process(&mut self, delta: f64) {
        let radians = self.angular_speed * delta;
        self.base_mut().rotate(radians as f32);
        let rotation = self.base().get_rotation();
        let velocity = Vector2::UP.rotated(rotation) * self.speed as f32;
        self.base_mut().translate(velocity * delta as f32);
    }
}
