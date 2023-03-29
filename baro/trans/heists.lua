Hooks:Add("LocalizationManagerPostInit", "payment_date_2_heists", function(loc)
	LocalizationManager:add_localized_strings({
		--Bain
		heist_arena = "Aliso was a Thief", --Alesso
		heist_arena_hl = "Aliso was a Thief",
		heist_arena_crimenet = "Is Aliso in town today? Jensek plays with gifts, so we go there, but Aliso is not the target. The platform acts as a permanent fortress, and Jensek offers a new defense: the entrance is secure. They think it's impossible. Show them the other way around\n\n» See the sand, get K4\n» Put C4 in the garage on khas\n» Destroy Piros' house and fire K4\n» Dig the bottom of the cauldron\n» Safe and secure theft",
		heist_arm_cro = "Preferred Vehicle: Detour", --Crossroads
		heist_arm_cro_hl = "Preferred Vehicle: Detour",
		heist_arm_cro_crimenet = "Our truck with ginseng is coming to town. Attack them.\nUse the secretary's decorative elements. They are very valuable and need to be stolen as soon as possible.\n\n» Repair the damage.\n» Calm and healthy\n» Change new one",
		heist_arm_fac = "Armor Catch: Pier.", --Docks
		heist_arm_fac_hl = "Armor Catch: Pier.",
		heist_arm_fac_crimenet = "I stopped the sex truck and got off at the station.\nUse the secretary's decorative elements. They are very valuable and need to be stolen as soon as possible.\n\n» Repair the damage.\n» Calm and healthy\n» Change new one",
		heist_arm_for = "Coach: Togran", --Train
		heist_arm_for_hl = "Coach: Togran",
		heist_arm_for_crimenet = "Lunch has a national meal. There appears to be a tower and a bullet.",
		heist_arm_hcm = "Army: Capital", --Shopping Center
		heist_arm_hcm_hl = "Army: Capital",
		heist_arm_hcm_crimenet = "We have armed cars and buses in the middle of the city.\nUse the secretary's decorative elements. They are very valuable and need to be stolen as soon as possible.\n\n» Repair the damage.\n» Calm and healthy\n» Change new one",
		heist_arm_par = "Please: Park", --Park
		heist_arm_par_hl = "Please: Park",
		heist_arm_par_crimenet = "Nice day in the park for a secret walk.\nUse the secretary's decorative elements. They are very valuable and need to be stolen as soon as possible.\n\n» Repair the damage.\n» Calm and healthy\n» Change new one",
		heist_arm_und = "Soldier: Below", --Underpass
		heist_arm_und_crimenet = "This subway is an easy place for Optimus Prime. Touch\nUse the secretary's decorative elements. They are very valuable and need to be stolen as soon as possible.\n\n» Repair the damage.\n» Calm and healthy\n» Change new one",
		heist_branchbank = "Gaoi: Small", --Random
		heist_branchbank_hl = "Gaoi: Small",
		heist_branchbank_crimenet = "Ben you want to be a classic wreck.\n\n» Looking for practice?\n» Pier the palace\n» Preventing citizens\n» Pick up the contents of the pen and run.",
		heist_branchbank_cash = "Blackmail: Money",
		heist_branchbank_cash_hl = "Blackmail: Money",
		heist_branchbank_cash_crimenet = "Bain wants you to succeed in the banking business. This article is about how much you can make in a bank.\n\n» Find a bank\n» Find a hot course.\n» point\n» Protect the poor\n» Escape and deposit",
		heist_branchbank_deposit = "Bank Theft: No",
		heist_branchbank_deposit_hl = "Bank Theft: No",
		heist_branchbank_deposit_crimenet = "I want you to be strong. It's about work clothes.\n\n» Find a bank\n» hot water search system\n» Funeral\n» rural violence against society\n» Open the safe\n» display case",
		heist_branchbank_gold = "Bank Loss: Gold",
		heist_branchbank_gold_hl = "Bank Loss: Gold",
		heist_branchbank_gold_crimenet = "Bin expects you to make a stable investment. Withdrawal banks and trustees are trying to increase purchasing power by increasing gold reserves.\n\n» Find a bank\n» I need some time to warm up.\n» Willie is safe.\n» Solar energy and gold",
		heist_cage = "Merchant", --Carshop
		heist_cage_hl = "Merchant",
		heist_cage_crimenet = "Go to ThevarShow. At this point, you need a new high-performance sports car. Leave them there. I don't want to eat, so relax.\n\n» Finding a department store is key\n» Step into the key room\n» Put a hole in the road\n» Car on the bridge",
		heist_family = "Shopping with Diamonds", --Diamond Store
		heist_family_hl = "Shopping with Diamonds",
		heist_family_crimenet = "This is beautiful jewelry. Lots of diamonds. Ben likes Kria. The cabinet has a signal connection. To make the situation worse.\n\n» Careful position.\n» Check cover, warnings, cameras\n» Put a diamond in your luggage and vacation.",
		heist_gallery = "Art Corridor", --Art Gallery
		heist_gallery_crimenet = "Bain wants you to go back to the art gallery.\n\n» Let’s talk about the universe.\n» Look for security and cameras.\n» Smile at the picture and get in the car and leave.",
		heist_jewelry_store = "Jeweler",
		heist_jewelry_store_hl = "Jeweler",
		heist_jewelry_store_crimenet = "Bain wants you to steal old jewels. Please come in and bring a glass.\n\n» I'm looking for jewelry\n» Please double check your security.\n» Buy suitcases and jewelry during the holiday season.\n» Theft of other valuables in the store.",
		heist_kosugi = "To Hide In The Shadows", --Shadow Raid
		heist_kosugi_hl = "To Hide In The Shadows",
		heist_kosugi_crimenet = "Mercury water is stored near ancient ships. Be careful, the trash comes back.\n\n» They accidentally entered the warehouse.\n» Save everything you need\n» Plan b doesn't work.\n» He was robbed and escaped",
		heist_rat = "Cook", 
		heist_rat_hl = "Cook", 
		heist_rat_crimenet = "We cook in a 1 meter wooded room. Hector was not stupid at that time. This is for commercial purposes only.\n\n» Find Metek Lab\n» Elda Mazze\n» Save money and don't spend",
		heist_roberts = "Go to the Bank", --Go Bank
		heist_roberts_hl = "Go to the Bank",
		heist_roberts_crimenet = "This is a classic banking problem. Break the dome, empty the useful boxes and get started. According to Benz Intelligence, the brand has the lowest numbers in the country. It's time for a change.\n\n» Playing key cards in the environment. Important for finances.\n» If not, use a dome drill.\n» Open a secure storage box\n» Assemble Empty Hooks\n» money",
		heist_rvd = "Dog to cut Keys", --Reservoir Dogs
		heist_rvd1_hl = "Funeral Priest",
		heist_rvd2_hl = "Tusia's boutique",
		heist_rvd_crimenet = "The west arch works. Cabot criminal families in Los Angeles need to help go to a diamond jewelry store. It's a simple filing process and can be found in the old morgue.\n\n» Meet Carbot residents outside the car store\n» Go to the store and steal diamonds\n» Meet Cabot residents at the Highland Funeral Hall.\n» Place the diamond behind.\n» Wait for TwTwick to recommend a loose device.",

		--Classics
		heist_dah = "Diamond Bullet", --Diamond Heist
		heist_dah_hl = "Diamond Bullet",
		heist_dah_crimenet = "The pomegranate group has millions of diamond houses. Is there a high-tech security system? Fortunately, the vacation continued and it was fun.\n\n» Always look for a few router boxes to get a security system.\n» Find 3 laptops and restore all memory\n» Take the key card officially from a child\n» Open the memory to buy diamonds",
		heist_dinner = "Killer", --Slaughter House
		heist_dinner_hl = "Killer",
		heist_dinner_crimenet = "I stopped the car at the port. Its products are made of gold. This boat is a watermark. problem?\n\n» Take a car\n» Larkin\n» Preparing for the Fall\n» Grab the gold\n» Racing",
		heist_flat = "Fear of Rome", --Panic Room
		heist_flat_hl = "Fear of Rome",
		heist_flat_crimenet = "Sometimes you have to do everything you can to get a good salary. And this time I did it.\n\n» Enter the house\n» Find and destroy the messy room\n» Clean the room, panic and source.",
		heist_glace = "Droichead Glas", --Green Bridge
		heist_glace_hl = "Droichead Glas",
		heist_glace_crimenet = "It's time for Cassoul to release this man and bring in the first Kent. Oh...problems...If there's no conversation or other engineers, find an alternative. we attack prisoners Ladies and gentlemen are not everyone. We must take serious action to stop cars in prisons. Not really helping or teaching, this guy is shocked!\n\n» wait for change\n» Open the car to meet the prisoner\n» welcome prisoners in the palace\n» eliminate prisoners\n» Sola",
		heist_man = "Hidden", --Undercover
		heist_man_hl = "Hidden",
		heist_man_crimenet = "The IRS has provided tools to make it even more valuable. Turn on your home computer to make it easier to edit your data. Show that we understand the business\n\n» Please charge the tax.\n» Double sliding\n» Display  Editing information",
		heist_nmh = "I Hate It", --No Mercy
		heist_nmh_hl = "I Hate It",
		heist_nmh_crimenet = "There are a few days left for swimming. A baby’s epilepsy can carry the same Mercy disease that was stolen from the hospital a few years ago. The porter sold this tent and they killed him. I knew from the beginning that it was not good. Like Bain, you need a complete script for a book. I said I love you, but he said we really need you. And we can't live without it.\n\n» Under public control\n» Find the right patient\n» 2 Do not use certified blood samples.",
		heist_pal = "Misleading", --Counterfeit
		heist_pal_hl = "Misleading",
		heist_pal_crimenet = "Close the inside pocket. South of Mason-Dixie we find two buses that go to Michelle and Wilson-Pensacola. Curve. Does this make sense. This man is the one who got this business. Then he slipped onto a heavy bag. Test yourself or try!\n\n» Michelle Zute\n» Keep running\n» They open the fraudulent document and run away.",
		heist_red2 = "The World's First Bank", --FWB
		heist_red2_hl = "The World's First Bank",
		heist_red2_crimenet = "Some time later, we dedicated ourselves to the world's first bank. Time to show up. Go there and restore what you find.\n\n» Download the guide\n» Connect to a power source\n» You are a prisoner\n» It simply came to our notice then.",
		heist_run = "Street Fever", --Heat Street
		heist_run_hl = "Street Fever",
		heist_run_crimenet = "I am busy and informed. I recently came across something important that happened to me. Pay it. Some will break you, you can kill them all. I intervened this morning and said that some of these people met someone in the big city. I don't know who these people are, but I think you are a real asset, so I'll help bring this client's information with him. I'll give you an address so you can see them and get down to business.\n\n» Call the police and go to him.\n» Beware of accidents",

		--The Continental
		heist_fish = "Steal the Boat", --Yacht
		heist_fish_hl = "Steal the Boat",
		heist_fish_crimenet = "I know Lady Margaret the Great and ... the gang that is the founder of the unrest. I now have a trusted account that has raised a lot of illegal money in the country to use these regular games. Just vote. The money hidden in the pot belongs to McKendrick's friend Ethan Powell. The ship is currently docked in a New York port.\n\n» Find stocks and save money\n» Research tools\n» Comes with use",
		heist_spa = "Ground Line 10-10", --Brooklyn 10 10
		heist_spa_hl = "Ground Line 10-10",
		heist_spa_crimenet = "Travel to New York at night. Continental Call: anonymous callers see some of their main employees in Brooklyn. When the horse came, I watched him. Sharon refused. We quickly arrived, took the prisoners and returned them safely.\n\n» I'm looking for a hand\n» Sharon protects and rescues him from theft\n» Then we understand\n» Let's go",

		--Events
		heist_haunted = "Reliable Bed at Home", --Safehouse Nightmare
		heist_haunted_hl = "Reliable Bed at Home",
		heist_haunted_crimenet = "Awake ...",
		heist_help = "Rinpo Monastery Prison.", --Prison Nightmare
		heist_help_hl = "Rinpo Monastery Prison.",
		heist_help_crimenet = "When sleep brings us into this strange country, beyond the world of awakening. Does anyone know what happened to us...",
		heist_hvh = "Cruel Murder Room", --Cursed Killroom
		heist_hvh_hl = "Cruel Murder Room",
		heist_hvh_crimenet = "Tick, tick, steal pet, tick to tick...",
		heist_nail = "Extreme Laboratory", --Lab Rats
		heist_nail_hl = "Extreme Laboratory",
		heist_nail_crimenet = "From liars and candy\nFoot odor.\nPlease do something on the street.\nNo,\nI didn’t want to say this\nDo not cook with underwear alone.",

		--Hector
		heist_alex = "Mouse:", --Rats
		heist_alex_1_hl = "Cook",
		heist_alex_2_hl = "Attempts Have Been Made",
		heist_alex_3_hl = "Standing",
		heist_alex_crimenet = "Help Hector get rid of Mendoza's boss.\n\n» Extraction of methamphetamine from Mendoza plant\n» Methamphetamine plate for cobra\n» Eliminate Mendoza warlords",
		heist_firestarter = "The Fire Has Gone Out",
		heist_firestarter_1_hl = "Fiji Chang",
		heist_firestarter_2_hl = "FBI Agent",
		heist_firestarter_3_hl = "Panaka Kahu",
		heist_firestarter_crimenet = "Hector wants you to fight the Mendoza cartoon.\n\n» Stop downloading the Mendoza app at the airport\n» Learn about FBR vehicles\n» Banks sell Mendoza money",
		heist_watchdogs = "Look at the Dog",
		heist_watchdogs_1_hl = "Load the Truck",
		heist_watchdogs_2_hl = "Ship Loading",
		heist_watchdogs_crimenet = "Hector needs a supervisor to transport cocaine.\n\n» Put the cocaine in the truck\n» Adaptation to new circumstances\n» Go to the harbor\n» Give the boat to the driver.",

		--Jimmy
		heist_dark = "Cloud Station", --Murky Station
		heist_dark_hl = "Cloud Station",
		heist_dark_crimenet = "We will fight Murkywater to get an EMP bomb. Lots of items were taken by train and parked at a hidden train station. I'd rather write it down, but it's awesome, isn't it? We have to be careful, sincere.\n\n» Find trains\n» Find EMP missiles.\n» Get them out there and run",
		heist_mad = "Woo", --Boiling Point
		heist_mad_hl = "Woo",
		heist_mad_crimenet = "This corrupt Russian organization tried to destroy Russia's secret laboratory. They do not believe that they have done anything stupid here. We need to stop mixing lakes with lakes, right? Cause or harm to men  women.\n\n» Enter the park\n» Laboratory door\n» Access to information\n» Management",

		--Jiu Feng
		heist_sand = "The One With Ukraine", --Ukrainian Prisoner
		heist_sand_hl = "The One With Ukraine",
		heist_sand_crimenet = "I have something to share. Is this true My ex boss Wong Yuf approaches you and satirizes his colleague Vlad Ko Kozak. I want to emphasize your position. In addition, you should make sure that the interview is conducted by a Hong Kong sailor or the last businessman in the region, foreign butcher Buhat Rahut Shun Kang. They will take you to a station in San Francisco. It looks good.\n\n» Type the port\n» Then find the power of exercise",
		heist_chas = "The Difficulty of the Dragon", --Dragon Heist
		heist_chas_hl = "The Difficulty of the Dragon",
		heist_chas_crimenet = "The companies I once owned made it easy for me to complicate my business and take advantage of this risk. They have a valuable object, in the form of a golden dragon. That's too old, isn't it? There are rumors that you need money and this post looks great. I can give you all the information you need. You can do whatever you want if you want to collect designs, but we will share your permission for other jewelry.\n\n» Enter the warehouse\n» Find the dome\n» Display dragons and other valuables.",
		heist_chca = "Enter Your Best",
		heist_chca_hl = "Enter Your Best",
		heist_chca_crimenet = "My friend, this is a great time to get your mom's and chick's teeth back. if yes With Jiufeng's help, I noticed that Trinity is spending more money Their cruise ship is Blackcat Casino Storage. Ass torture Even somewhere to hide! Make this pasta look like smokers control Titanic, cleanse them! How do?\n\n» Turn on the black cat\n» Get information, codes and accounts in the vault\n» Find and open the safe\n» Safe robbery and escape",

		--Locke
		heist_bph = "Foreign Lands Yachts", --Hells Island
		heist_bph_hl = "Foreign Lands Yachts",
		heist_bph_crimenet = "My friends, as 'Cha' called it, I saw a Qatari port during World War II. The office is located in the waters of the world on an island off the north coast of Oregon. Smokers have been using it since the seventies. I swore twice. Today I sell ivory boat tickets. You can go back to your home and our people\n\n» Last Enter the surname\n» Eli Willie Byrne\n» give and run",
		heist_brb = "Make up for the soldiers' set", --Brooklyn Bank
		heist_brb_hl = "Make up for the soldiers' set",
		heist_brb_crimenet = "Bain was buried in the old Brooklyn Bank Foundation at the time. We need to open the way and go back.\n\n» Come to the shores of the mysterious rock valley\n» Go to the bank\n» Find your way to the safe room\n» Safe to cut\n» C4 house on the ground floor\n» Keep your belongings in a safe place\n» Touch or run",
		heist_des = "Henry Stone", --Henrys Rock
		heist_des_hl = "Henry Stone",
		heist_des_crimenet = "Murkywater's secret location at Henry's Rock hosts many spectacular events. Mud found and tested two gold mines, including the Golden Green Casino and the FBI. We have no control over things.\n\n» Fan Henry Rock\n» Find the two boxes of gold and return them.\n» Kill the saved guard",
		heist_pbr = "At The Foot Of The Mountain", --Beneath the Mountain
		heist_pbr_hl = "At The Foot Of The Mountain",
		heist_pbr_crimenet = "According to Fort Knox, the result is an incomprehensible drainage system in the desert. Coercion of theft\n\n» Return the lost property\n» Remove heavy internal roads\n» Clear trash\n» The Quran is Uranus\n» Remove the radar",
		heist_pbr2 = "Heavenly East", --Birth of Sky
		heist_pbr2_hl = "Heavenly East",
		heist_pbr2_crimenet = "Purpose: Water transport machines. There are a lot of coins. It comes to the ark. Get the money out of the car.\n\n» She was in the trunk\n» If the wallets are empty, open the loading opening.\n» Jump on a water parachute.\n» Collect big money in the city Sign the ban.\n» Enter the canal and run.",
		heist_pex = "Tivoana Breakfast", --Breakfast
		heist_pex_hl = "Tivoana breakfast",
		heist_pex_crimenet = "His daughter Urada Kyldini was hit by the Mexican Kerel. Honestly, it happened right after our banking business. He was transferred to the Tijuana Police Station and appears to have evidence that he may remain in prison for a long time. It must be published.\n\n» Join the police.\n» Destroy the evidence\n» Find and release the prisoner.\n» Escape",
		heist_sah = "Hair Shackleford", --Shacklethorne
		heist_sah_hl = "Hair Shackleford",
		heist_sah_crimenet = "The elephant sent us instructions from the old house in Salem where we will buy kitchen utensils.\n\n» I crossed the security line and entered the main building.\n» Search for the code and enter the database\n» Save and protect images",
		heist_tag = "Join the Federation", --Breakin Feds
		heist_tag_hl = "Join the Federation",
		heist_tag_crimenet = "The FBI is taxing a large symbol for taking it directly from an elephant's estate so that Qatar can take its place and receive credit for removing Commissioner Garrett Bain. We made a deal tonight, but first go to the FBI and make a deal.\n\n» Safe compartment\n» Check out Garrett's office\n» Contact Garrett\n» Run",
		heist_vit = "Hale Keokeo", --White House
		heist_vit_hl = "Hale Keokeo",
		heist_vit_crimenet = "The biggest theft. Though yes. The White House is free! The answers to all three questions are a series of principles: presidential, legal and illegal, but unnamed. If you see him, you can break up with Scott and relax.\n\n» Go to the White House\n» Enter the room around the room.\n» Receive an important presidential card\n» Log in to PEOC and open the list\n» I apologize to the president and run",
		heist_wwh = "Alaska Mountains", --Alaskan Deal
		heist_wwh_hl = "Alaska Mountains",
		heist_wwh_crimenet = "Sir, I will help bring down the army. You did a business in Alaska but you need a sender to save the business, okay?",
		heist_mex = "Request a Gift", --Border Crossing
		heist_mex_hl = "Request a Gift",
		heist_mex_crimenet = "The Marquee Water Estate crosses the continent through Mexico. Use the hidden channels of Overkill MC and Coyop Alliance. These feathers can be removed from under the nose if the teeth collide with the bain and paralyze.\n\n» MC-Aid invades Alikon-Werk.\n» Look at the size of the Koyopa office in Mexico\n» Steal prey in the dark waters.",
		heist_mex_cooking = "Crystal At The End", --Border Crystals
		heist_mex_cooking_hl = "Crystal At The End",
		heist_mex_cooking_crimenet = "Everyone, I made a lot of money. You don't eat much, you aren't very healthy. The Kozopa cartilage elf, south of the border, set a good example for our community so that we could borrow money.\n\n» In the field\n» Find a math lab\n» Internal audit\n» Bake together\n» Streetwear",

		--The Butcher
		heist_crojob1 = "Poma: Hale moku", --Bomb Dockyard
		heist_crojob1_hl = "Poma: Hale moku",
		heist_crojob1_crimenet = "Splitter announces that Moreta’s ship will land in Washington in a few days. There are many clean men. We need people who are willing to give back to them. He needs a deep understanding.\n\n» Open the home page\n» Move the ship to the 3D port.\n» Go on the boat and see the pumpkins.\n» Throw a bomb",
		heist_crojob2 = "Puma:", --Bomb Forest
		heist_crojob2_hl = "Puma:",
		heist_crojob2_crimenet = "The lifeboats will bring a large number of bombs to the factory and throw them there. Experienced equipment is needed to recover explosives. Send a message. Speak out loud.\n\n» Find the right car\n» Put the water in the basket\n» Find C4 and use it to open the car.\n» run with mines",
		heist_friend = "Scarface-Domego", --Scarface
		heist_friend_hl = "Scarface-Domego",
		heist_friend_crimenet = "I've been using firearms in the Caribbean for a while. Very knowledgeable but some of the older operators in the area didn't allow me to break into the local market. Especially the soda cartel in Bolivia. Instead of competing with me on a situational level, they decided to attack my actions: a ship sank, my belongings were stolen, and my agent was killed. This is stupid. Now you have to pay the price. Use your blood to collect taxes.\n\n» Back at home\n» Catch Ernesto Sousa and kill him\n» Open the hidden safe\n» Escape from looting",

		--The Dentist
		heist_big = "Large Pancakes", --Big Bank
		heist_big_hl = "Large Pancakes",
		heist_big_crimenet = "This is the mother of every bank. The door of the Charity Bank trophy is not visible at all.\n\n» Plan your theft in advance\n» Main entrance and side office\n» Find your way up\n» Learn and learn as much as you can",
		heist_hox = "Hoxton Was Released", --Hoxton Breakout
		heist_hox_1_hl = "Search",
		heist_hox_2_hl = "Oh Cello",
		heist_hox_crimenet = "The dentist re-examined Hoxton. Let us listen. The show is the same length. Take down the city walls, occupy Houston, and save him from hell.\n\n» Free hoxton\n» Evacuate to armed truck\n» Bring a Hawkton armored vehicle\n» Far from Haston",
		heist_hox_3 = "Hoxton Proposal", --Hoxton Revenge
		heist_hox_3_hl = ". Turn around",
		heist_hox_3_crimenet = "I was safely brought to the Union Army. They do good things to hide their identity. He shot a fool before they worked, so we went for a walk.\n\n» Quietly, quietly go home and find a way inside\n» Select security\n» Find the mouse\n» Remove the mouse\n» Remove all characters",
		heist_kenaz_full = "Green Casino", --Golden Grin
		heist_kenaz_hl = "Green Casino",
		heist_kenaz_crimenet = "Las Vegas Green Gold is a dentist's favorite product. Take it.\n\n» Use the program to choose a large add or hide add\n» Kenyan Casino\n» Dia program\n» Check how to access the library\n» Return confidential flight to dentist",
		heist_mia = "Miami Line", --Hotline Miami
		heist_mia_1_hl = "Miami Line",
		heist_mia_2_hl = "Fourth Grade",
		heist_mia_crimenet = "My long -term plan is to use the Attorney General in Washington. Registration for Russians living in Miami Your goal is to destroy Russia. This intervention took place in Washington, DC and beyond. Unfortunately, the future has nothing to do with it.\n\n» Dentists ask you to take care of political officials.\n» Contact a political official to contact you\n» Follow the phone\n» “Show political dishonesty and fraud,” he added",
		heist_mus = "Daiman", --The Diamond
		heist_mus_hl = "Daiman",
		heist_mus_crimenet = "History of diamonds. It is also very valuable. A dentist is one of the few people involved in the movement. You can get it to the secret person they show.\n\n» Go to the Matsendrik Museum\n» Find out where the diamonds are stored\n» She stole the diamonds\n» Manage all found tools.",

		--The Elephant
		heist_born = "Oh Biker Clown", --Biker Heist
		heist_born_hl = "Lion Lion",
		heist_chew_hl = "Come On",
		heist_born_crimenet = "Deciding to join a band for money is not a big decision. His first brother in Overkill MC is looking for blood. Our blood is special. We got caught right away, but it was really worth it. trust\n\n» Join a club\n» Find an engineer\n» Get off",
		heist_election_day = "Nju",
		heist_election_day_1_hl = "Best Way",
		heist_election_day_2_hl = "Vote Without Deadline",
		heist_election_day_3_hl = "Vote",
		heist_election_day_crimenet = "Crime is a profession of segregation, but then you find yourself in a dirty and political profession. The elephant wanted to help move his wife Bob McKendrick to City Hall.\n\n» Find a voting machine\n» Run to the car and go to the ballot paper.\n» Make sure the elephant isn't wrong.",
		heist_framing_frame = "Frame area",
		heist_framing_frame_1_hl = "Art Corridor",
		heist_framing_frame_2_hl = "Business",
		heist_framing_frame_3_hl = "Photo",
		heist_framing_frame_crimenet = "The big picture wanted to teach the senator's enemy.\n\n» The senator wants to steal from the cinema\n» Add the camera to the stolen cameras list and complete the operation\n» Appeared in the Senate office and planted coca in its dome",
		heist_welcome_to_the_jungle = "Miracle Oil", --Big Oil
		heist_welcome_to_the_jungle_1_hl = "To Teach A Club",
		heist_welcome_to_the_jungle_2_hl = "I don't want Fadongi",
		heist_welcome_to_the_jungle_crimenet = "The elephant must have a political shape.\n\n» Learn more about the inventor\n» Find and steal inventions",

		--Vlad
		heist_bex = "Holy Grandma Bank", --San Martin
		heist_bex_hl = "Holy Grandma Bank",
		heist_bex_crimenet = "Vlad asks you to help pay the big fish for all the help.\n\n» Find your way to Bank San Martin\n» See and open the heavens\n» Get an official.",
		heist_cane = "Santa Training Class", --Santas Workshop
		heist_cane_hl = "Santa Training Class",
		heist_cane_crimenet = "Hope is a camping team. Perfume gave them gifts - a pack of white cigarettes. Ask them to surprise us.\n\n» Walk\n» Don't forget that the turtle gave you a gift\n» Beware of smart people\n» Against",
		heist_four_stores = "The Fourth Source",
		heist_four_stores_hl = "The Fourth Source",
		heist_four_stores_crimenet = "Vlad has returned to the city, and his shopkeeper does not want to work for Russia. Reveal Vlad's performance in a way that makes people lost.\n\n» Hel 4 International Labor Organization\n» Manage your finances\n» See if you can pick up trash",
		heist_jolly = "Answer", --Aftershock
		heist_jolly_hl = "Answer",
		heist_jolly_crimenet = "I have signed contracts with several West Coast organizations to sell goods on the East Coast. Unfortunately, the first series of humor was bad news! you can believe it! ??? Go and make sure your suit is ready. The virtual library sank\n\n» Imperial wolf\n» Aioli\n» Undress.",
		heist_mallcrasher = "Crusher Shop",
		heist_mallcrasher_hl = "Crusher Shop",
		heist_mallcrasher_crimenet = "Vlad asked. A stone to heal him. He turns out to be serious. He wants to destroy you in Stone Mall.\n\n» Find a mall\n» Destroy and destroy everything\n» Take as many resources as possible.",
		heist_moon = "Christmas Trip", --Stealing Xmas
		heist_moon_hl = "Christmas Trip",
		heist_moon_crimenet = "My son-in-law brought me a Colombian-style avalanche for Christmas. But he refused, and the judge watched him. He hid in the Midtown mall, but was found by police. Hell, American police, there's no Christmas in this country! I'm a man and I celebrate Christmas, but it's wrong. This is not good! I need help, my friend.\n\n» Safe Santa\n» Back to Kohl's government!\n» Treat the snowman and run",
		heist_nightclub = "Firefly",
		heist_nightclub_hl = "Firefly",
		heist_nightclub_crimenet = "Vlad wants them to steal money from Dimitro.\n\n» Look at the wooden house\n» Office security is compromised\n» Dimitri has money in the car",
		heist_peta = "Goats", --goat
		heist_peta_hl = "This is not an agreement",
		heist_peta2_hl = "Make Dirt",
		heist_peta_crimenet = "Hector's death left its mark on the gunpowder business. I was born because I can't walk well. Damn it, I hate that! Blood cells are crawling everywhere. You work hard to benefit the Honduran community. Beat them for the carrots. Break your gang of smugglers. Steal their products. What is wrong?\n\n» Look at the goat\n» Goats\n» Parkley",
		heist_pines = "Snowman White", --White Xmas
		heist_pines_hl = "Snowman White",
		heist_pines_crimenet = "Vlad wants the drunk pilot to be saved and his property returned to him.\n\n» Find a pilot\n» Take care of him and help him with a helicopter.\n» Return as much cocaine as possible",
		heist_shoutout_raid = "Liquefy", --Melt Down
		heist_shoutout_raid_hl = "Liquefy",
		heist_shoutout_raid_crimenet = "I heard about a great job at Marquee Water Waragehouse. They respond. I don't want him back at that time. The team added a little. I wanted to do a little more. The area removes it and does so before it is no longer used.\n\n» Mix contaminated water\n» Local security\n» The turtle is already in the wind\n» Training and injuries",
		heist_ukrainian_job = "Project Ukraine",
		heist_ukrainian_job_hl = "Project Ukraine",
		heist_ukrainian_job_crimenet = "Help the power to destroy the royal marriage that imprisoned him.\n\n» Find a jewelry store\n» Find and steal the crown\n» Robbing someone: What other jewelry did you find?",
		heist_fex = "Balochi Palace", --Buluc
		heist_fex_hl = "Balochi Palace",
		heist_fex_crimenet = "Hi everyone, Vlad still needs your help. My husband is angry that the head of Ska Burg, a cartel of Koiopa, imprisoned my son-in-law. I have to send you a message that no one in the world below is talking about Vlad and is not dating him. That's why I want to kill Burg. Be patient, shit. Happily, I'm your grace, right?\n\n» Enter the prison\n» Broken bulldozer cabinet\n» Don't be afraid of Burg\n» leak",

		--Shayu
		heist_pent = "The King Was Happy",
		heist_pent_crimenet = "Many of us are not happy with the golden circle that Yopo Wang envisioned. It is time for the elderly to rest. Delete and add your domain. I have the necessary information for security. Distribution - There is a lot of gold on the king's roof. This is for you\n\n» To enter the building, enter the building.\n» Add 10 pounds.\n» Hugh Hawking Laboratory\n» * Flying gold collection.",

		--Gemma
		heist_ranc = "Midlands Hotels",
		heist_ranc_crimenet = "»A businessman named Esteban Santiago tried to pick me up. It's time to throw it away and move on. Esteban buys stolen paintings. If you make a lot of money, you can save a lot of money. Stephanie is a great team, but I think she works well for others. Experienced people have a lot of money\n\n»Read from Estebano Santiago\n»it is a closed army\n»- We were pleased then.",
		--Hoxton
		heist_chill_combat = "Run to a Safe House"
	})
end)