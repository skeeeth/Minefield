#Keeps track of the phases of a turn.
#
#Objects requiring this information can
#access it through this singleton
extends Node

signal phase_changed(phase);

enum turnPhases  {TICK,DRAW,MAIN,END};

var currentPhase = turnPhases.DRAW:
	set(newValue):
		assert(turnPhases.has(newValue));
		currentPhase = newValue;
		emit_signal(newValue);
	get:
		return currentPhase;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
