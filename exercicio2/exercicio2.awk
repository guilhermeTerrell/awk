#Objetivo: dada uma string, devemos invertê-la
#Exemplo: hello -> olleh
#Estratégia:	1-) Utilizar a função split para quebra a string caractere por caractere e armazenar em um vetor;
#		2-) criar um novo vetor que armazena os caracteres do último para o primeiro


#Função split no awk: split(enrtada, vetorDestino, delimitador)
#Exemplo: split($0, string, "") -> pega a entrada, separa caractere por cartctere e armazena no vetor string

#Obs: O index dos vetores começa em 1. 
#Exemplo: print(string[1]) vai printar o primeiro caractere do vetor string 

#!/usr/bin/awk -f


#função que retorna uma palavra invertida
function inverteString(texto){
	if(texto == "" || texto == " "){
		return texto;
	}

	else{
		split(texto, stringAux, "");
		for(i = length(stringAux); i > 0; i--){
			stringInvertida = stringInvertida stringAux[i]; # sintaxe para concatenar caracteres
		}
		return stringInvertida;
	}
}


#inicializações
BEGIN{
	$0="";
	stringInvert=""; # variável que irá armazenar a string inverida
}


{
	stringInvert = inverteString($0);
}

END{
	
	print(stringInvert);
}
