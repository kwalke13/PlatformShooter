///scrFire(wep)
index = argument0;

wep = obj_gunCon.wep;
wep_kick = obj_gunCon.wep_kick;

weapon= string(wep[@ index]);
kick = wep_kick[@ index];

instance_create(obj_player.x,obj_player.y,obj_screenshake);

if(weapon=="rifle"){
    audio_play_sound(snd_machine_gun_shoot,10,0);
    instance_create(x,y,obj_bullet);
    instance_create(x,y,obj_bullet_case);
}
else if(weapon=="minigun"){
    audio_play_sound(snd_machine_gun_shoot,10,0);
    instance_create(x,y,obj_bullet);
    instance_create(x,y,obj_bullet_case);

}

else if(weapon=="grenader"){
    audio_play_sound(snd_grenade_pop,10,0);
    instance_create(x,y,obj_grenade);
    //instance_create(x,y,obj_bullet_case);
}

else if(weapon=="pistol"){
    audio_play_sound(snd_machine_gun_shoot,10,0);
    instance_create(x,y,obj_bullet);
    instance_create(x,y,obj_bullet_case);

}



// kickback
if(obj_player.facing=="right"){
    with(obj_player){
        if(!place_meeting(x-other.kick,y,obj_solid)){
            x-=other.kick;
        }
    }
}
else{
    with(obj_player){
        if(!place_meeting(x+other.kick,y,obj_solid)){
            x+=other.kick;
        }
    }
}
