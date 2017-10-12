//Loads assets for fresh game

instance_create_layer((384/2), ((216/2) - 50),"UI",obj_theHorde);
instance_create_layer((384/2), (216/2),"UI",obj_pressEnter);
instance_create_layer((384/2), ((216/2) + 50), "UI", obj_credits);
instance_deactivate_layer("Instances");
