extends Control

@onready var nome_input = $VBoxContainer/HBoxContainer/LineEditNome
@onready var idade_input = $VBoxContainer/HBoxContainer2/LineEditIdade
@onready var resultado_label = $VBoxContainer/ResultadoLabel
@onready var button = $VBoxContainer/button

func _ready():
	# Conecta o sinal do botão ao método
	button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	var nome = nome_input.text
	var idade = idade_input.text
	resultado_label.text = "Nome: %s | Idade: %s" % [nome, idade]
