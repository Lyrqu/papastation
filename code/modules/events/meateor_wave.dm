/datum/round_event_control/meteor_wave/meaty
	name = "Meaty Ore Wave"
	typepath = /datum/round_event/meteor_wave/meaty
	weight = 10
	max_occurrences = 3

/datum/round_event/meteor_wave/meaty/announce()
	priority_announce("Miesne meteoryty wykryte na kursie kolizyjnym ze stacja.", "ZARAZ JEBNIE",'sound/AI/meteors.ogg')

/datum/round_event/meteor_wave/meaty/tick()
	if(IsMultiple(activeFor, 3))
		spawn_meteors(5, meteorsB) //meteor list types defined in gamemode/meteor/meteors.dm