///scrFire(wep)
index = argument0;

wep = obj_gunCon.wep;
wep_kick = obj_gunCon.wep_kick;

weapon= string(wep[@ index]);
kick = wep_kick[@ index];

if(weapon=="rifle"){
    instance_create(x,y,obj_bullet);
    instance_create(x,y,obj_bullet_case);
}
else if(weapon=="tripleMachineGun"){
    instance_create(x,y,obj_bullet);
    instance_create(x,y,obj_bullet_case);
    //show_message("fire triple");
    //for(i=0;i<3;i++){
     //   first=instance_create(x,y,obj_bullet);
     //   dir=obj_player.direction;
    //    first.direction=dir+random(20);
   // }
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