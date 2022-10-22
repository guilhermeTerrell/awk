#!/usr/bin/awk -f

#estrutura do código em awk:
#BEGIN{ ... }
#{ condiçoes }
#END{ ... }


#------------------------------- Ler o nome ----------------------------------------
BEGIN {
        #inicialização da variável
	$0 = "you"; #caso o arquivo de entrada for /dev/null será printado "you"
}

#---------------------------- Processar a string ------------------------------------

#caso de string contida no arquivo de entrada seja vazia ou com espaço
{
	if ($0 == "" || $0 == " "){
	       	$0 = "you";
	}
}

#-------------------------------- printar o resultado --------------------------------- 
END {
        print "One for " $0 ", one for me.";
}


