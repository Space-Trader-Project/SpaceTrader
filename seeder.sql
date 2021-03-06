use spacetrader_db;

INSERT INTO users(first_name, last_name, username, email, password)

VALUES ('Roland', 'Valdez', 'rv', 'roland@codeup.com','$2a$12$3kvJ6C69qvhe0bOX/sxhNOP.R0EyJCNfmNaMkXfXKnwLY/LO3lUQO'), -- roland
       ('Timothy', 'Lefkowitz', 'tl', 'tim@codeup.com','$2a$12$3eXBLMH54dB9JifsgYvQNeNUIqW7XMSgIXmPoP.sE5C.Xs1/lSakO'), -- tim
       ('Salim', 'Ahmedabadi', 'sa', 'salim@codeup.com','$2a$12$oEinyQ/1B9GZmsRgBdEdfu.1j2R6qdSpg7Wv9KW2u0uMKxs8wZRPy'), -- salim
       ('John', 'Pierce', 'jp', 'john@codeup.com','$2a$12$BjD7Iw6Obzq/inGJ71sou.IEgGV0YZTfErVw2oKoxBi.G7/0uVCzu'), -- john
       ('Kenyon', 'Luce', 'kl', 'kenyon@codeup.com','$2a$12$L3GusL3a/WRsFEUFdF8Cnuu9yvaqC9kLOY5jFXaVALIIx5/S2Kz9.'); -- kenyon


INSERT INTO ads(user_id, title, description, picture, quantity, price)
VALUES (1, 'Millennium Falcon (YT-1300 light freighter)', 'Do you need to make the Kessel Run in less than twelve parsecs then this is the ship for you.The YT-1300 Corellian light freighter, manufactured by the Corellian Engineering Corporation, was essentially a giant "forklift" designed to tug around giant container ships. As one of the most successful designs in history, the appeal of the vessel is not its basic equipment, but its modular ability to take an extraordinary amount of modifications and alterations.','http://img.lum.dolimg.com/v1/images/Millennium-Falcon_018ea796.jpeg',1, 49999.99),
       (1, 'TIE figher', 'TIE fighters have two hexagonal wings fitted with solar panels which power a twin ion engine (TIE) system that accelerates ionized gases at a substantial fraction of lightspeed.TIE fighter''s primary weapons are a pair of laser cannons tied to a secondary generator. The fighter does not possess deflector shields, and while its light armoring is proof against small arms and glancing micrometeoroids a direct hit from a laser cannon will destroy it, encouraging pilots to shoot first and make their shots count.','https://upload.wikimedia.org/wikipedia/en/d/d9/TIEfighter.jpg', 248, 4500.23),
       (1, 'T-65B X-wing', 'The T-65B X-wing was produced by the Incom Corporation, which had previously supplied the ARC-170 and Z-95 Headhunter starfighters to the Galactic Republic during the Clone Wars. The X-wing quickly became a symbol of the Rebellion thanks to its use in several spectacular victories and the role it played in ultimately defeating the Empire.', 'https://upload.wikimedia.org/wikipedia/en/7/7b/X-wing.jpg', 142, 25999.01),
       (2, 'MA37 Individual Combat Weapon System', 'The MA37 was first introduced in 2437 and has remained the primary service rifle of all branches of the UNSC ever since. It has a high rate of fire, but due to its inaccuracy, it is highly ineffective at long ranges and inflicts low damage against energy shields.','https://static.wikia.nocookie.net/halo/images/3/3f/MA37_Assault_Rifle.png', 2, 750.00),
       (2, 'Mark 2488 Onager', 'The Mark 2488 Magnetic Accelerator Cannon, formally designated 15cm Mark/2488 1.1GJ MAC, also known as the Onager and often referred to as a "mass driver", is a stationary Magnetic Accelerator Cannon used by the United Nations Space Command during the Human-Covenant War.','https://static.wikia.nocookie.net/halo/images/7/79/Onager.jpg', 5, 1548.78),
       (2, 'MJOLNIR Powered Assault Armor/Mark VII Gen I', 'The Mark VII was produced by a supplier other than Office of Naval Intelligence''s Materials Group, which produced the previous models. It is more lightweight than prior versions. The Mark VII implements several features not exhibited by earlier MJOLNIR incarnations. Most notably, the armor contains nano-technological components which enable the armor to repair and upgrade itself autonomously without outside influences, such as while the user is in cryosleep.','https://halo.wiki.gallery/images/d/d9/HM-K5-Naomi.jpg', 10, 3500.23),
       (3, 'Smart Disc', 'The Smart Disc, also known as the Smart Weapon, Cutting Disk or simply the Disc, is a primarily thrown Yautja weapon. It is an extremely sharp circular cutting device that is typically thrown like a discus and yet returns to the user like a boomerang. It also features a hand grip for use as a melee slashing weapon.','https://static.wikia.nocookie.net/avp/images/4/42/PREDATOR_p2_disc_03.jpg', 10, 268.48),
       (3, 'Plasmacaster', 'The Plasmacaster, also known as the Plasma Cannon, Laser Cannon or Shoulder Cannon, is a Yautja long-range energy projector weapon with automatic targeting capabilities. Capable of firing armor-penetrating plasma bolts at distant targets, it is arguably the most devastating and technologically advanced offensive tool at the Yautja''s disposal.','https://static.wikia.nocookie.net/avp/images/f/fe/PredatorHairDryerGun-1.jpg', 2, 1500.99),
       (3, 'Medicomp', 'The Medicomp, also known as the MediKit, is a powerful and versatile first aid kit used by the Yautja to treat wounds while on a Hunt. The Medicomp contains various serums and surgical tools that can be used to treat a wide range of injuries quickly and effectively.','https://static.wikia.nocookie.net/avp/images/8/85/Medi02.PNG', 20, 85.74),
       (4, 'Mother Ship', 'A Mother Ship is a massive, mobile base for Yautja hunters. They are fully equipped with scout ships and insertion pods, capable of launching a hunter onto a planet''s surface and sending smaller Scout Ships onto Hunts. They also come with powerful beam weapons, powerful enough to punch a hole from the orbit of a planet down to the deep crust.','https://static.wikia.nocookie.net/avp/images/3/37/Avp-ship05.PNG', 1, 87412.56),
       (4, 'The Milano', 'The Milano is a Ravager M-ship and the main spacecraft used by the Guardians of the Galaxy for interstellar flights to worlds.','https://static.wikia.nocookie.net/marveldatabase/images/7/77/Milano_from_Guardians_of_the_Galaxy_%28film%29_001.jpg', 1, 54128.00),
       (4, 'Quinjet', 'Used primarily by the Avengers for transportation to various locations, the quinjet is first designed by the Wakanda Design Group, headed by Black Panther, T''Challa. Each one is equipped with VTOL capability and turbojet engines. A quinjet can reach Mach 2.1. Two highly specialized ultra-large Quinjets were used to transport various superheros through space during the Infinity Crusade.','https://static.wikia.nocookie.net/marveldatabase/images/6/6d/Quinjet_Marvel_Cinematic_Universe.png', 1, 250000.00),
       (5, 'Mjolnir', 'Mjolnir was crafted from a nugget of Uru, a powerful nigh-invulnerable Asgardian metal. Additional enchantments placed upon it by Odin made it virtually indestructible. It has survived heat as extreme as the heart of suns and blasts powerful enough to destroy planets. Almost nothing is capable of withstanding a blow from Mjolnir, not even the armor of the powerful Celestials. A rare exception is primary adamantium.','https://static.wikia.nocookie.net/marveldatabase/images/1/16/Thor%27s_Hammer.jpg', 1, 5000000.00),
       (5, 'Destroyer', 'The Destroyer armor possesses numerous capabilities which are only active if the armor is inhabited or remote piloted by the spirit of a sentient being. While some of the powers might vary, depending upon the spirit inhabiting the armor, they are primarily the same for any user.','https://static.wikia.nocookie.net/marveldatabase/images/e/ed/Destroyer_%28Enchanted_Armor%29_from_Thor_%28film%29_0002.jpg', 1, 300000.00),
       (5, 'Space Helmet', 'A helmet capable of retracting down into a removable earpiece. The helmet allows for users to survive in the vacuum of space providing both an oxygen supply and pressure support. The helmet also provides various detailed visual displays.','https://static.wikia.nocookie.net/marvelcinematicuniverse/images/b/bf/4558286b-9a2b-46dc-af1f-acd35c854b97.jpg', 1, 5000.00);

INSERT INTO categories (ad_id, categories)
VALUES (1, 'Spaceship'),
       (2, 'Spaceship'),
       (3, 'Weapon'),
       (4, 'Weapon'),
       (5, 'Armor'),
       (6, 'Weapon'),
       (7, 'Weapon'),
       (8, 'Medical'),
       (9, 'Spaceship'),
       (10, 'Spaceship'),
       (11, 'Spaceship'),
       (12, 'Spaceship'),
       (13, 'Weapon'),
       (14, 'Armor'),
       (15, 'Helmet');

