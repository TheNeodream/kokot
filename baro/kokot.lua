local old_init = WeaponTweakData.init

--[[
    local - premenna, nemoze sa zacinat cislom a ani uvodzovkami, nerozonavaju integer od textu
        local a = 1; alebo local a = "Jack"; alebo local a = false (false = nill)
    
    local description = [[Hello World
    please
    ]-] -> cele je to jedna premenna - bez pomlcky
    
    a = 1 -> globalna premenna
    _G.a = 1 -> tiez globalna premenna

    print(a) -> vypise 1
    printf(type(a)) -> vypise typ premennej (konkretne v tomto pripade integer)
    printf()

    print(math.ceil(3,648468)) -> vypise a zaoukruhli hore
    print(math.floor(3,648468)) -> vypise a zaoukruhli dole
    
    print(a .. "Hello") -> vypise obsah premennej "a" a "Hello"

    local x = 22
    local y = tostring(x) -> x je cislo, y je text
    
    \n \t \v \\

    print(string.format("pi: %.10f", math.pi))
    ]]--

function WeaponTweakData:init(tweak_data)
    old_init(self, tweak_data)

self.m134.AMMO_MAX = 100
self.m134.fire_mode_data = {fire_rate = 1} 	--0.06=1000; 500=0.12 (60/()= cislo) -> aky casovy rozdiel je od 1 po 2 vystrel
self.m134.CLIP_AMMO_MAX = 20
self.m134.stats.damage = 999					
self.m134.stats.spread = 0						--a*4-4
self.m134.stats.recoil = 0						--a*4-4
self.m134.stats.concealment = 35					
self.m134.AMMO_PICKUP = {1, 10}					
self.m134.can_shoot_through_enemy = true 		
self.m134.can_shoot_through_wall = true			
self.m134.can_shoot_through_shield = true 		
self.m134.armor_piercing_chance = 0 			--0.4=40% || 0=0%
self.m134.timers.reload_not_empty = 1				
self.m134.timers.reload_empty = 40

self.slap.AMMO_MAX = 100
self.slap.fire_mode_data = {fire_rate = 0.12} 
self.slap.CLIP_AMMO_MAX = 99
self.slap.stats.damage = 10						
self.slap.stats.spread = 26						
self.slap.stats.recoil = 26					
self.slap.stats.concealment = 0				
self.slap.AMMO_PICKUP = {0, 0}					

self.tti.AMMO_MAX = 69
self.tti.fire_mode_data = {fire_rate = 0.06} 	
self.tti.CLIP_AMMO_MAX = 20
self.tti.stats.damage = 99999						
self.tti.stats.spread = 0						
self.tti.stats.recoil = 0						
self.tti.stats.concealment = 0					
self.tti.AMMO_PICKUP = {0.1, 1}					
self.tti.can_shoot_through_enemy = true 		
self.tti.can_shoot_through_wall = true			
self.tti.can_shoot_through_shield = true 		
self.tti.armor_piercing_chance = 1 
self.tti.timers.reload_not_empty = 30				
self.tti.timers.reload_empty = 15

self.rpg7.AMMO_MAX = 1
self.rpg7.fire_mode_data = {fire_rate = 0.12} 	
self.rpg7.CLIP_AMMO_MAX = 1
self.rpg7.stats.damage = 1						
self.rpg7.stats.spread = 0						
self.rpg7.stats.recoil = 26						
self.rpg7.stats.concealment = 35					
self.rpg7.AMMO_PICKUP = {0.1, 0.2}					
self.rpg7.can_shoot_through_enemy = false 		
self.rpg7.can_shoot_through_wall = true			--update 0.3
self.rpg7.can_shoot_through_shield = false 		
self.rpg7.armor_piercing_chance = 0 			
self.rpg7.timers.reload_not_empty = 0			--huehuehue update 0.3
self.rpg7.timers.reload_empty = 0
--////////////////////////////////////////////////////////////////////// AK47 ////////////////////////////////////////////////////////////////////////////////
self.ak74.AMMO_MAX = 500
self.ak74.fire_mode_data = {fire_rate = 0.07} 	
--self.ak74.fire_mode_data = {0.02}
self.ak74.CLIP_AMMO_MAX = 100
self.ak74.stats.damage = 20
self.ak74.stats.spread = 21 --???? skusobny vypocet x*4-4=80
self.ak74.stats.recoil = 6 --???? x*4-4=20
self.ak74.stats.concealment = 21
self.ak74.AMMO_PICKUP = {10,100}
--//////////////////////////////////////////////////////////////////// Mosconi 12G //////////////////////////////////////////////////////////////////////////////
self.huntsman.CLIP_AMMO_MAX = 3
self.huntsman.AMMO_MAX = 30

end 
