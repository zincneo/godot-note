/**
# EntryPoint
*/
struct GDExtension;

#[godot::prelude::gdextension]
unsafe impl godot::prelude::ExtensionLibrary for GDExtension {}

pub mod player;
