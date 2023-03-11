
-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █         Utilisation de la BD          █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
USE TheExpanseWikiAYL
GO


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █     Insertion de données dans les tables     █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

SET IDENTITY_INSERT Traditions.Personnage ON
INSERT INTO Traditions.Personnage ( PersoID, Nom, Prenom, Age, Sexe, NomActeur, DateNaissanceActeur, Occupation, Description, Citation1, Citation2, Citation3, ImagePerso, VaisseauID, FactionID )
VALUES 
( 1, 'Holden', 'James', 30, 'M', 'Steven Strait', '19860323', 'Captaine (Rocinante)', 

'James ''Jim'' Holden est le capitaine du Rossinante. Né entre 30 BXT et 21 BXT dans le Montana sur Terre, Holden a rejoint la marine des Nations Unies, 
avant d''être renvoyé de manière déshonorante après sept ans de service continu. Après la destruction du Canterbury, Holden, ainsi que Shed Garvey, 
Naomi Nagata, Amos Burton et Alex Kamal, ont entrepris une quête pour découvrir le véritable coupable, découvrant des complots et des mystères à travers le système. 
Ses exploits se sont poursuivis à bord du Rossinante, l''élevant finalement à une reconnaissance à l''échelle du système et à sa nomination en tant que premier président de l''Union des transports.', 

'As long as we’re living and breathing, there’s more we can do. We just have to be strong enough', 

'A child who won’t grow up turns into a fool.',

'I need you to remind me of who I am so I can come back.',

NULL, 1, 1 ),


( 2, 'Nagata', 'Naomi', 27, 'F', 'Dominique Tipper', '19880724', 'Ingénieure en chef',

'Naomi Nagata est une Belter qui a grandi sur des navires de prospection dans la ceinture et les planètes extérieures. 
Elle est une ingénieure extrêmement talentueuse et utilise son expertise pour improviser des moyens de maintenir son équipage en vie.',

'I fix ships, not people.',

'Every shitty thing we do makes the next one that much easier, doesn’t it?',

'I don’t ever remember a time when Earth, Mars and the Belt weren’t fighting. The sides change sometimes. What we think we’re fighting for. Who we tell ourselves are the good people. But it just seems we can’t ever stop fighting war after war after war. It’s part of being human. An ugly part, but I don’t think it will ever change. Technology certainly hasn’t changed it. Guns. Railguns. Nuclear bombs. No weapon ever brings peace.',

NULL, 1, 3 ),


( 3, 'Burton', 'Amos', 41, 'M', 'Wes Chatham', '19781011', 'Mécanicien',

'Amos Burton, anciennement connu sous le nom de Timothy, est un mécanicien de navires originaire de la Terre. Actuellement, 
il travaille à bord du Rocinante et est l''un des quatre membres d''équipage. Mécanicien et combattant qualifié, 
il est un maître de la survie dans le monde du chien mangeur de chien du système et a une tendance à la violence.',

'It’s better to go down swinging than rolling over.',

'A kid needs at least one person who never gives up on them, no matter what.',

'Everyone leaves unfinished business. That’s what dying is.',

NULL, 1, 1 ),


( 4, 'Kamal', 'Alex', 40, 'M', 'Cas Anvar', '19660315', 'Pilote',

'Alex Kamal était un pilote de marine vétéran originaire de Mars. Ayant suivi une formation militaire, il était l''un des pilotes les meilleurs et les plus précis du système Sol.',

NULL, NULL, NULL, NULL, 1, 2 ),


( 5, 'Miller', 'Josephus', NULL, 'M', 'Thomas Jane', '19690222', 'Détective',

'Josephus ''Joe'' Aloisus Miller était un détective endurci et fatigué du monde originaire de Ceres, travaillant pour Star Helix Security. 
Il a développé un intérêt amoureux pour l''agent de l''OPA Julie Mao après s''être vu confier une affaire impliquant sa disparition, 
et jouerait finalement un rôle essentiel dans la sauvegarde de la Terre de la protomolécule après qu''elle ait pris le contrôle d''Eros.',

'Some people aren’t worth saving',

'I’m gonna count to one. One.',

'Trust your gut before your head gets in the way.',

NULL, NULL, 3 ),


( 6, 'Draper', 'Bobbie', 30, 'F', 'Frankie Adams', '19940103', 'Sergent d''artillerie dans le Martian Marine Corps (ex)',

'Roberta ''Bobbie'' W.Draper, également appelée Gunny dans le MMC, était membre et sergent d''artillerie du groupe Force Recon (Forces spéciales) du Martian Marine Corps (MMC). 
Elle a été stationnée sur le MCRN Scirocco et Xuesen tout au long de sa carrière. Pendant la plus grande partie de sa vie, elle a été une martienne farouchement nationaliste dédiée au rêve martien de terraformer Mars.',

NULL, NULL, NULL, NULL, 1, 2 ),


( 7, 'Avasarala', 'Chrisjen', 70, 'F', 'Shohreh Aghdashloo', '19520511', 'Secrétaire général des Nations Unies',

'Son Excellence Chrisjen Avasarala est la secrétaire générale des Nations Unies.En tant que secrétaire générale, elle est chef d''État et de gouvernement de la Terre et de la Lune, et directrice générale des Nations Unies (ONU).',

'Earth must come first.',

'When people don’t tell the truth, it always ends badly',

'When parents fight, the child has a crisis of loyalty.',

NULL, NULL, 1 ),


( 8, 'Drummer', 'Camina', 32, 'F', 'Cara Gee', '19831002', 'Présidente du Syndicat des Transports',

'Camina Drummer est une Belter qui est l''actuelle présidente du Syndicat des transports. 
Auparavant, elle est l''ancienne directrice adjointe de la station Tycho sous Fred Johnson, ainsi que l''ancien capitaine et commandant de la station OPAS Behemoth/Medina. 
Après avoir démissionné de son poste, elle a commencé un voyage en tant que chef d''une flotte de pirates prenant le contrôle du territoire de Sohiro et collectant une part de toutes les activités des pirates. 
Elle a commandé le Dewalt avec sa famille qui l''accompagnait dans une petite flotte, avant de finalement se séparer en raison de différences concernant l''affiliation à la Free Navy. 
Elle commandait l''ancien navire Tynan de Klaes Ashford et dirigeait la faction Drummer en collaboration avec l''UNN et le MCRN contre Marco Inaros dans le conflit de la marine libre.',

NULL, NULL, NULL, NULL, 6, 3 ),


( 9, 'Mao', 'Julie', 22, 'F', 'Florence Faivre', '19830608', 'Crew member of the Scopuli',

'Juliette ''Julie'' Andromeda Mao était la fille cadette de Jules-Pierre Mao, le PDG de l''un des conglomérats d''entreprises les plus puissants du système Sol, Mao-Kwikowski Mercantile. 
Rebelle et têtue de nature, Julie a défié son père et a nié toute implication avec ses idéaux corporatistes. Elle a rejoint un groupe d''activistes étudiants pendant ses études universitaires. 
Après avoir fui la Terre, elle est connue pour avoir parcouru la ceinture. Après sa rencontre avec la protomolécule, elle a été infectée et en est finalement morte.',

NULL, NULL, NULL, NULL, 7, 1 ),


( 10, 'Inaros', 'Marco', NULL, 'M', 'Keon Alexander', NULL, 'Chef de l''OPA Belter',

'Marco Inaros était un agent de l''Outer Planets Alliance, un extrémiste politique et un commandant de la Free Navy, une faction de Belter et un "bras et voix militaire" autoproclamé des planètes extérieures. 
Il était le principal architecte derrière le bombardement de la Terre, vraisemblablement le bombardement du Parlement MCR et le coup d''État de la station Tycho, et l''initiateur du conflit de la marine libre.',

NULL, NULL, NULL, NULL, 8, 4 );
SET IDENTITY_INSERT Traditions.Personnage OFF



SET IDENTITY_INSERT Productions.Episode ON
INSERT INTO Productions.Episode ( EpisodeID, Titre, NoSaison, NoEpisode, DateDiffusion, Note, Auteur1, Auteur2, Auteur3, Realisateur, Description, ImageEpisode )
VALUES
( 1, 'Dulcinea', 1, 1, '20151123', 7.5, 'Mark Fergus', 'Hawk Ostby', NULL, 'Terry McDonough', 
'Dans la ceinture d''astéroïdes près de Saturne, James Holden et l''équipage du cargo de glace Canterbury enquêtent sur un appel de détresse d''un mystérieux navire abandonné, le Scopuli. Sur la station Ceres, le détective Miller commence une enquête officieuse sur une héritière disparue, Julie Mao.',
NULL ),

( 2, 'The Big Empty', 1, 2, '20151215', 7.5, 'Mark Fergus', 'Hawk Ostby', NULL, 'Terry McDonough', 
'Holden et son équipage se battent pour leur survie dans une navette gravement endommagée. Miller découvre des indices sur Julie Mao, alors que le rationnement de l''eau frappe la station Ceres. Sur Terre, la sous-secrétaire adjointe de l''ONU, Chrisjen Avasarala, interroge un terroriste de Belter.', 
NULL ),

( 3, 'Remember the Cant', 1, 3, '20151216', 7.8, 'Robin Veith', NULL, NULL, 'Jeff Woolnough', 
'Alors qu''Avasarala joue un jeu politique dangereux, Holden et son équipage sont obligés de se retourner alors qu''ils sont retenus captifs par la marine martienne.', 
NULL ),

( 4, 'CQB', 1, 4, '20151216', 8.5, 'Naren Shankar', NULL, NULL, 'Jeff Woolnough', 
'Holden et son équipage sont pris au milieu d''une bataille désespérée alors que de mystérieux navires de guerre attaquent et montent à bord du Donnager. Alors que Miller continue d''enquêter sur Julie Mao, son partenaire Havelock continue de disparaître.', 
NULL ),

( 5, 'Back to the Butcher', 1, 5, '20160105', 8.5, 'Dan Nowak', NULL, NULL, 'Robert Lieberman', 
'L''équipage a survécu à la perte du Canterbury et du Donnager et est contacté par un allié improbable. Miller, sur Cérès, poursuit son enquête et ses pensées de complot grandissent.', 
NULL ),

( 6, 'Rock Bottom', 1, 6, '20160112', 7.8, 'Jason Ning', NULL, NULL, 'Robert Lieberman', 
'L''équipe de Holden fait une alliance difficile avec Fred Johnson tandis que Miller se bat pour sa vie contre les voyous d''Anderson Dawe.', 
NULL ),

( 7, 'Windmills', 1, 7, '20160119', 7.8, 'Daniel Abraham', 'Ty Franck', NULL, 'Bill Johnson', 
'Holden et son équipage se rendent compte qu''ils ne sont pas seuls sur le Rocinante et se retrouvent face à un blocus de la Marine martienne. La nuit noire de l''âme de Miller, croyant que tout est perdu, trouve une nouvelle raison de continuer. Avasarala rend visite à la famille de Holden dans le Montana.', 
NULL ),

( 8, 'Salvage', 1, 8, '20160126', 8.5, 'Robin Veith', NULL, NULL, 'Bill Johnson', 
'Un navire abandonné détient un secret potentiellement dévastateur. Holden et son équipe croisent la route de Miller sur Eros. Avasarala reçoit de mauvaises nouvelles.', 
NULL ),

( 9, 'Critical Mass', 1, 9, '20160202', 8.5, 'Robin Veith', 'Dan Nowak', 'Naren Shankar', 'Terry McDonough', 
'Un flashback sur l''histoire d''origine de Julie révèle sa trajectoire. Holden et Miller se rencontrent enfin et font équipe pour aller au fond de l''étrange situation d''urgence qui se passe sur Eros. Alors que la véritable horreur des événements sur Eros est révélée, Holden et Miller malades doivent surmonter des obstacles incroyables s''ils espèrent vivre pour se battre un autre jour. Partie 1 sur 2', 
NULL ),

( 10, 'Leviathan Wakes', 1, 10, '20160202', 8.5, 'Mark Fergus', 'Hawk Ostby', NULL, 'Terry McDonough', 
'Un flashback sur l''histoire d''origine de Julie révèle sa trajectoire. Holden et Miller se rencontrent enfin et font équipe pour aller au fond de l''étrange situation d''urgence qui se passe sur Eros. Alors que la véritable horreur des événements sur Eros est révélée, Holden et Miller malades doivent surmonter des obstacles incroyables s''ils espèrent vivre pour se battre un autre jour. Partie 2 sur 2', 
NULL ),

( 11, 'Safe', 2, 1, '20170201', 8.0, 'Mark Fergus', 'Hawk Ostby', NULL, 'Breck Eisner', 
'Des alliés improbables, Joe Miller et l''équipage du Rocinante dirigé par Jim Holden, en découvrent plus sur le complot visant à libérer la proto-molécule sur la station Eros.', 
NULL ),

( 12, 'Doors & Corners', 2, 2, '20170201', 8.7,  'Daniel Abraham', 'Ty Franck', NULL, 'Breck Eisner', 
'Holden et son équipe organisent un raid dangereux à la recherche d''informations sur la protomolécule.', 
NULL ),

( 40, 'Retrograde', 4, 4, '20191213', 8.2, 'Matthew Rasmussen', NULL, NULL, 'David Petrarca', 
'Le batteur et Ashford affrontent une personne dangereuse du passé de Naomi. Murtry traque une cible. Bobbie fait une confession qui change la vie.', 
NULL );
SET IDENTITY_INSERT Productions.Episode OFF



SET IDENTITY_INSERT Traditions.Faction ON
INSERT INTO Traditions.Faction ( FactionID, Nom, Capital, Population, Description, ImageFaction )
VALUES
( 1, 'Les Nations Unies', 'New York', 31000, 'L''Organisation des Nations Unies (ONU) est une fédération souveraine d''États-nations autrefois indépendants qui s''étend sur plusieurs territoires sur Terre et sur Luna, au sein du système solaire et de la galaxie de la Voie lactée.', NULL ),
( 2, 'République martienne du Congrès', 'Londres Nova', 9000, 'La République martienne du Congrès (MCR) est l''organe directeur qui gouverne les quatre milliards d''habitants de Mars et est l''une des deux superpuissances humaines. Leur drapeau rappelle Mars et ses deux lunes, Phobos et anciennement Deimos.', NULL ),
( 3, 'Outer Planets Alliance (OPA)', 'Ceres', 100, 'L''Outer Planets Alliance (OPA) est un réseau vaguement affilié empruntant ou s''associant sous une idéologie commune de base. Il a commencé sa vie en tant que syndicat ou groupe de défense, luttant pour les intérêts des habitants de la ceinture et était souvent en conflit direct avec la marine de la coalition Terre-Mars des planètes intérieures. Son logo est un cercle divisé et des factions distinctes ont des cellules basées à chaque station de la ceinture, y compris deux sites principaux, la station Tycho et la station Ceres.', NULL ),
( 4, 'Free Navy', 'Ceres', 100, 'La Free Navy est la branche militaire navale autoproclamée d''une faction de l''Outer Planets Alliance (OPA). À l''origine, il a été formé à partir d''une organisation dirigée par des étudiants. Leurs membres sont parfois considérés et / ou qualifiés d''«extrémistes de l''OPA», en particulier par le chef sortant de l''OPA, Fred Johnson.', NULL );
SET IDENTITY_INSERT Traditions.Faction OFF



SET IDENTITY_INSERT Traditions.Territoire ON
INSERT INTO Traditions.Territoire ( TerritoireID, Nom, Population, Description, ImageTerritoire, FactionID )
VALUES
( 1, 'Terre', 30000, 'La Terre, également connue sous le nom de Terra ou Sol Ⅲ, est la troisième planète du système Sol et l''un de ses quatre mondes terrestres. Monde natal de l''humanité, la Terre est le plus grand centre de la politique humaine et, techniquement, reste la planète capitale et la superpuissance dominante, avec son organe directeur les Nations Unies. Il a toujours été à l''avant-garde de l''histoire humaine.', NULL, 1 ),
( 2, 'Luna', 1000, 'Luna est la seule lune de la Terre. C''est aussi la cinquième plus grande lune du système solaire. Il est sous la juridiction des Nations Unies (ONU) et ses habitants ont tous les droits et responsabilités de la citoyenneté de l''ONU.', NULL, 1 ),
( 3, 'Mars', 9000, 'Mars est la quatrième planète du Sol et la deuxième plus petite planète du système Sol. Il a une population de dix milliards d''humains, et est gouverné par la République martienne du Congrès.', NULL, 2 ),
( 4, 'Phobos', 0, 'Phobos, également "Mars I", est la plus grande des deux petites lunes de Mars.', NULL, 2 ),
( 5, 'Deimos', 0, 'Deimos, également "Mars II", était l''une des deux petites lunes de Mars.', NULL, 2 ),
( 6, 'Belt', 100, 'La ceinture d''astéroïdes, souvent appelée simplement la ceinture et également connue sous le nom de ceinture d''astéroïdes principale (pour la distinguer de la ceinture de Kuiper plus éloignée), est une région en forme de tore dans le système Sol, située à peu près entre les orbites de Mars et Jupiter. Il se compose de nombreux astéroïdes plus petits et plus gros et fait partie de la région dite des planètes extérieures du système.', NULL, 3 ),
( 7, 'Tycho Station', 0.015, 'La station Tycho est la plus grande plate-forme de construction mobile du système Sol, et le siège de la ceinture de Tycho Manufacturing and Engineering Concern et, secrètement, de l''Outer Planets Alliance (OPA). Il abrite une population de plus de 15 000 personnes.', NULL, 3 ),
( 8, 'Ceres Station', 60, 'Cérès est le plus grand astéroïde connu et la seule planète naine du système solaire intérieur, et le premier astéroïde découvert par l''humanité. Il se trouve dans la ceinture d''astéroïdes.', NULL, 3 );
SET IDENTITY_INSERT Traditions.Territoire OFF



SET IDENTITY_INSERT Traditions.Vaisseau ON
INSERT INTO Traditions.Vaisseau ( VaisseauID, Nom, Type, Description, ImageVaisseau, FactionID )
VALUES
( 1, 'Rocinante', 'Frégate légère', 'Le Rocinante ("Roci") est un ancien MCRN (Martian Congressional Republic Navy) devenu une frégate de classe Corvette indépendante capable de multiples rôles de combat. Commandé à l''origine sous le nom de MCRN Tachi (ECF-270), le navire était stationné à bord du vaisseau amiral de la marine martienne, le MCRN Donnager. Il a été renommé par James Holden après que lui et son équipage se soient échappés du Donnager à bord du navire, marquant le début de sa longue et décorée carrière de navire de guerre indépendant.', NULL, 2 ),
( 2, 'Donnager', 'Bataille navale', 'Le MCRN Donnager était le navire amiral de la flotte Jupiter de la marine de la République du Congrès martien (MCRN). Le Donnager est l''homonyme du cuirassé de classe Donnager.', NULL, 2 ),
( 3, 'Amun-Ra-class', 'Navire furtif/Frégate', 'La frégate furtive de classe Amun-Ra était une classe de navires de guerre avancés commandés, conçus et détenus par la Protogen Corporation.', NULL, 1 ),
( 4, 'Anubis', 'Frégate furtive de classe Amun-Ra', 'The Anubis was a Amun-Ra-class stealth frigate owned by Protogen Corporation.', NULL, 1 ),
( 5, 'Canterbury', 'transporteur de glace', 'Le Canterbury ("Cant") était un ancien navire de colonie qui a été converti pour fonctionner comme un transporteur de glace voyageant entre la ceinture et les planètes extérieures au service de la Pur''n''Kleen Water Company.', NULL, 3 ),
( 6, 'Tychos Station', 'Plateforme de chantier mobile', 'La station Tycho est la plus grande plate-forme de construction mobile du système Sol, et le siège de la ceinture de Tycho Manufacturing and Engineering Concern et, secrètement, de l''Outer Planets Alliance (OPA). Il abrite une population de plus de 15 000 personnes.', NULL, 3 ),
( 7, 'Scopuli', 'Cargo', 'Le Scopuli était un cargo de transport léger martien immatriculé sur Eros qui était au service de l''OPA. L''un de ses membres d''équipage était Julie Mao et il a été attaqué par le vaisseau furtif Anubis. Il a ensuite été utilisé comme leurre dans l''embuscade et la destruction du Canterbury.', NULL, 3),
( 8, 'Pella', 'Croiseur léger', 'Le Pella était le vaisseau amiral de la Free Navy (FN) et le navire personnel de Marco Inaros. Le navire était un croiseur léger de conception martienne et appartenait autrefois à la marine de la République martienne du Congrès (MCRN). Le Pella était vital dans le fonctionnement et le commandement de la marine libre pendant le conflit de la marine libre.', NULL, 4 );
SET IDENTITY_INSERT Traditions.Vaisseau OFF;



INSERT INTO Productions.PersoEpisode ( EpisodeID, PersoID )
VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,7),(1,9),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),(12,6),(12,8),
(40,1),(40,10);
