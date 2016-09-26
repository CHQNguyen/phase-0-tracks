my_room = {
	left_side: {
		lamp: "black lamp",
		fan: "standing fan",
		desk: [
			"yellow bottle",
			"black bottle",
			"laptop",
			"monitor",
			"lamp",
			"mouse",
			"keyboard"
		],
		bed: [
			"pillow1",
			"pillow2",
			"long pillow",
			"blanket",
			"sheets",
			"phone"
		],
		window: []
	},
		right_side: {
		nightstand: [
			"alarm clock",
			"hats",
			"lamp",
			"helmet",
			"watch",
			"ethernet cable"
		],
		closet: [
			"towels",
			"t_shirts",
			"pants",
			"jackets",
			"hoodies",
			"dress_shirts",
			"beanie"
		],
		door: []
	}
}

my_room[:right_side][:door].push("coat hanger")
my_room[:left_side][:bed][4]
my_room[:left_side][:desk].last
my_room[:right_side][:nightstand]
my_room.keys
my_room.values

