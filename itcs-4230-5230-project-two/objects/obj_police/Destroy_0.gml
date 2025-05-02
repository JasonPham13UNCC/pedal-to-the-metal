instance_create_layer(x,y,"Instances", obj_explosion)
if( y - 150 < room_height) {
audio_play_sound(snd_explosion,10,false);
}