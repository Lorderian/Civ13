/obj/item/clothing/under/custom
	var/uncolored = FALSE
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/custom/attack_self(mob/user as mob)
	if (uncolored)
		var/input = input(user, "Choose a hex color (without the #):", "Color" , "FFFFFF")
		if (input == null || input == "")
			return
		else
			input = uppertext(input)
			if (lentext(input) != 6)
				return
			var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
			for (var/i = 1, i <= 6, i++)
				var/numtocheck = 0
				if (i < 6)
					numtocheck = copytext(input,i,i+1)
				else
					numtocheck = copytext(input,i,0)
				if (!(numtocheck in listallowed))
					return
			color = addtext("#",input)
//			user << "Color: [color]"
			uncolored = FALSE
			return
	else
		..()
///////////////ANCIENT//////////////////////////////////////
/obj/item/clothing/under/custom/toga
	name = "toga"
	desc = "A simple cloth toga."
	icon_state = "customtoga"
	item_state = "customtoga"
	worn_state = "customtoga"

/obj/item/clothing/under/custom/roman
	name = "long tunic"
	desc = "A simple cloth tunic, with a brass and leather belt."
	icon_state = "customroman"
	item_state = "customroman"
	worn_state = "customroman"

/obj/item/clothing/under/custom/spartan
	name = "short loincloth"
	desc = "A simple, small loincloth."
	icon_state = "customspartan"
	item_state = "customspartan"
	worn_state = "customspartan"

/obj/item/clothing/under/custom/shendyt
	name = "shendyt"
	desc = "A kilt-like cloth used around the waist."
	icon_state = "customshendyt"
	item_state = "customshendyt"
	worn_state = "customshendyt"

/obj/item/clothing/under/custom/celtic
	name = "celtic trousers"
	desc = "Thick cloth celtic trousers."
	icon_state = "customceltic"
	item_state = "customceltic"
	worn_state = "customceltic"

///////////////MEDIEVAL//////////////////////////////////////
/obj/item/clothing/under/custom/tunic
	name = "tunic"
	desc = "A simple cloth tunic, with a leather belt."
	icon_state = "customtunic"
	item_state = "customtunic"
	worn_state = "customtunic"

/obj/item/clothing/under/custom/arabictunic
	name = "arabic tunic"
	desc = "A light cloth tunic, in arabic style."
	icon_state = "customarabictunic"
	item_state = "customarabictunic"
	worn_state = "customarabictunic"

/obj/item/clothing/under/customren
	name = "renaissance putfit"
	desc = "A renaissance-style outfit."
	var/uncolored = FALSE
	var/topcolor = 0
	var/undercolor = 0
	item_state = "customren"
	icon_state = "customren"
	worn_state = "customren"
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/customren/attack_self(mob/user as mob)
	if (uncolored)
		if (!topcolor)
			var/input = input(user, "Top - Choose a hex color (without the #):", "Top Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				topcolor = addtext("#",input)

		if (!undercolor)
			var/input = input(user, "Lining - Choose a hex color (without the #):", "Lining Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				undercolor = addtext("#",input)

		if (topcolor && undercolor)
			uncolored = FALSE
			var/image/top = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customren_top")
			top.color = topcolor
			var/image/under = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customren_lining")
			under.color = undercolor
			overlays += top
			overlays += under
			return
	else
		..()
///////////////IMPERIAL//////////////////////////////////////
/obj/item/clothing/under/customdress
	name = "dress"
	desc = "A female dress."
	var/uncolored = FALSE
	var/topcolor = 0
	var/undercolor = 0
	var/overcolor = 0
	item_state = "customdress"
	icon_state = "customdress"
	worn_state = "customdress"
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/customdress/attack_self(mob/user as mob)
	if (uncolored)
		if (!topcolor)
			var/input = input(user, "Top - Choose a hex color (without the #):", "Top Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				topcolor = addtext("#",input)

		if (!undercolor)
			var/input = input(user, "Under Bottom - Choose a hex color (without the #):", "Under Bottom Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				undercolor = addtext("#",input)
		if (!overcolor)
			var/input = input(user, "Over Bottom - Choose a hex color (without the #):", "Over Bottom Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				overcolor = addtext("#",input)
		if (topcolor && undercolor && overcolor)
			uncolored = FALSE
			var/image/top = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customdress_top")
			top.color = topcolor
			var/image/under = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customdress_under")
			under.color = undercolor
			var/image/over = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customdress_over")
			over.color = overcolor
			overlays += top
			overlays += under
			overlays += over
			return
	else
		..()



/////////////////UNIFORMS////////////////////////////////////
/obj/item/clothing/under/customuniform
	name = "uniform"
	desc = "A victorian Era uniform."
	var/uncolored = FALSE
	var/shirtcolor = 0
	var/pantscolor = 0
	var/epaulettescolor = 0
	item_state = "customuni"
	icon_state = "customuni"
	worn_state = "customuni"
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/customuniform/attack_self(mob/user as mob)
	if (uncolored)
		if (!shirtcolor)
			var/input = input(user, "Shirt - Choose a hex color (without the #):", "Shirt Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				shirtcolor = addtext("#",input)
	//			user << "Color: [color]"
		if (!pantscolor)
			var/input = input(user, "Pants - Choose a hex color (without the #):", "Pants Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				pantscolor = addtext("#",input)
		if (!epaulettescolor)
			var/input = input(user, "Epaulettes - Choose a hex color (without the #):", "Epaulettes Color" , "FFFFFF")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				epaulettescolor = addtext("#",input)
		if (shirtcolor && pantscolor && epaulettescolor)
			uncolored = FALSE
			var/image/pants = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customuni_pants")
			pants.color = pantscolor
			var/image/shirt = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customuni_shirt")
			shirt.color = shirtcolor
			var/image/belt = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customuni_over")
			var/image/epaulettes = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "customuni_epaulettes")
			epaulettes.color = epaulettescolor
			overlays += pants
			overlays += shirt
			overlays += belt
			overlays += epaulettes
			return
	else
		..()


///////////////WW2-MODERN//////////////////////////////////////



/////////////////UNIFORMS////////////////////////////////////
/obj/item/clothing/under/customuniform_modern
	name = "camo uniform"
	desc = "A modern era camouflaged uniform."
	var/uncolored = FALSE
	var/browncolor = 0
	var/greencolor = 0
	var/blackcolor = 0
	item_state = "modern_camo_custom"
	icon_state = "modern_camo_custom"
	worn_state = "modern_camo_custom"
	color = "#FFFFFF"
	New()
		..()
		spawn(5)
			uncolored = TRUE


/obj/item/clothing/under/customuniform_modern/attack_self(mob/user as mob)
	if (uncolored)
		if (!browncolor)
			var/input = input(user, "First Camo Color - Choose a hex color (without the # | default is brown):", "First Camo Color" , "58493d")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				browncolor = addtext("#",input)
		if (!greencolor)
			var/input = input(user, "Second Camo Color - Choose a hex color (without the # | default is green):", "Second Camo Color" , "5b6142")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				greencolor = addtext("#",input)
		if (!blackcolor)
			var/input = input(user, "Third Camo Color - Choose a hex color (without the # | default is dark grey):", "First Camo Color" , "2f323b")
			if (input == null || input == "")
				return
			else
				input = uppertext(input)
				if (lentext(input) != 6)
					return
				var/list/listallowed = list("A","B","C","D","E","F","1","2","3","4","5","6","7","8","9","0")
				for (var/i = 1, i <= 6, i++)
					var/numtocheck = 0
					if (i < 6)
						numtocheck = copytext(input,i,i+1)
					else
						numtocheck = copytext(input,i,0)
					if (!(numtocheck in listallowed))
						return
				blackcolor = addtext("#",input)
		if (greencolor && browncolor && blackcolor)
			uncolored = FALSE
			var/image/brown = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "modern_camo_custom_l1")
			brown.color = browncolor
			var/image/green = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "modern_camo_custom_l2")
			green.color = greencolor
			var/image/black = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "modern_camo_custom_l3")
			black.color = blackcolor
			var/image/belt = image("icon" = 'icons/obj/clothing/uniforms.dmi', "icon_state" = "modern_camo_custom_objs")
			overlays += brown
			overlays += green
			overlays += black
			overlays += belt
			return
	else
		..()