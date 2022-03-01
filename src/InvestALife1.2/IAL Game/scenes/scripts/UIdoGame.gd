extends Control
var texto = false

func _ready():
	ProjectSettings.get_setting("display/window/size/width")
	ProjectSettings.get_setting("display/window/size/height")
	
	$barra_inferior/SubirBarra.visible = true
	$barra_inferior/DescerBarra.visible = false
	$CARD/Clicar_card.visible = false
	
func _process(delta):
	if $CARD.margin_left == -385 && $CARD.margin_right == 385 && texto == false:
		$CARD/card_exemplo1/textbox_card/text_card/AnimationPlayer.play("anim_text")
		texto = true
		$CARD/Clicar_card.visible = true
	if $barra_inferior/SubirBarra.visible == true && $barra_inferior/DescerBarra.visible == false && Input.is_action_just_released("subir_barra"):
		$barra_inferior/AnimationPlayer.play("subir barra")
		$barra_inferior/SubirBarra.visible = false
		$barra_inferior/DescerBarra.visible = true		
	elif $barra_inferior/SubirBarra.visible == false && $barra_inferior/DescerBarra.visible == true && Input.is_action_just_released("descer_barra"):
		$barra_inferior/AnimationPlayer.play("descer barra")
		$barra_inferior/DescerBarra.visible = false
		$barra_inferior/SubirBarra.visible = true
