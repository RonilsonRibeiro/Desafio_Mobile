class Buscar < Calabash::ABase

  def escrever_placa()
    wait_for_element_exists("* id:'result_situacao'")
    element_exists("* id:'result_situacao'")
    wait_for_element_exists("* id:'result_placa'")
		DATATABLE['PLACAS_VALIDAS']= query("* id:'result_placa'", :getText)
		File.open("./features/fixtures/base_dados.yml", 'w') {|f| YAML.dump(DATATABLE, f)}
	end

  def fechar_anuncio()
    wait_for_element_exists("* contentDescription:'Interstitial close button'")
    if element_exists("* contentDescription:'Interstitial close button'")
      touch("* contentDescription:'Interstitial close button'")
    end
  end

  def avaliar_app()
    if element_exists("* id:'button2'")
      touch("* id:'button2'")
    end
  end

  def pesquisar_placa(letra, numero)
    wait_for_element_exists("* id:'et_placa_letra'")
    if element_exists("* id:'et_placa_letra'")
      touch("* id:'et_placa_letra'")
      keyboard_enter_text letra
      touch("* id:'et_placa_numero'")
      keyboard_enter_text numero
      touch("* id:'fab_consultar'")
    end
  end

  def validar_texto(texto)
    element_exists("* text:'#{texto}'")
  end

end
