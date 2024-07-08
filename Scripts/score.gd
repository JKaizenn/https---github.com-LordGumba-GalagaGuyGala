extends Node2D

var score = 0
var score_label

func _ready():
	score_label = $ScoreLabel
	update_score()

func increase_score(amount):
	score += amount
	update_score()

func update_score():
	score_label.text = "Score: %d" % score
