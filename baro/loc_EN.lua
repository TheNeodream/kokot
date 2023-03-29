local text_original = LocalizationManager.text
function LocalizationManager:text(string_id, ...)
return string_id == "all_2" and "Helmet Popping"
or string_id =="all_2_desc" and "Increases your headshot damage by ##25%##."
or string_id =="all_4" and "Blending In"
or string_id =="all_4_desc" and "You gain ##+1## increased concealment.\n\nWhen wearing armor, your movement speed is ##15%## less affected. \n\nYou gain ##45%## more experience when you complete days and jobs."
or string_id =="all_6" and "Walk-in Closet"
or string_id =="all_6_desc" and "Unlocks an armor bag equipment for you to use. The armor bag can be used to change your armor during a heist.\n\nIncreases your ammo pickup to ##135%## of the normal rate. "
or string_id =="all_8" and "Fast And Furious"
or string_id =="all_8_desc" and "You deal ##5%## more damage. Does not apply to melee damage, throwables, grenade launchers or rocket launchers."
or string_id == "jb'name" and "JEBO Z LESA"
or string_id == "jb'desc" and "SI KOKOT"
or string_id == "jb'perk1n" and "PORODENY KOKOT"
or string_id == "jb'perk1d" and "NARODIL SI SA AKO ##KOKOT##"
or string_id == "jb'perk3n" and "SLABY KOKOT"
or string_id == "jb'perk3d" and "DOSRAL SI SA. MAS ##50%## HP"
or string_id == "jb'perk5n" and "JE VIDNO ZE TI JEBE"
or string_id == "jb'perk5d" and "je to tak no. ARMOR MAS V ##KURVE##!"
or string_id == "jb'perk7n" and "huhuhu"
or string_id == "jb'perk7d" and "sova zahukala. MAS ##NEVIEM KOLKO## DMG REDUKCIE."
or string_id == "jb'perk9n" and "COOOO?"
or string_id == "jb'perk9d" and "jebe? Healujes ##??%## HP Z TVOJICH KILLOV, KILLOV TEAMAMATEOV a ##3%## kazdych 5 se##kund##."
or text_original(self, string_id, ...)
end