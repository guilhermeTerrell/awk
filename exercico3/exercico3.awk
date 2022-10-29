#!/usr/bin/gawk -v
#


function waterSound(variavelDeEntrada){
	string = "";
	if(variavelDeEntrada % 3 == 0){
		string = string "Pling";	
	}

	if(variavelDeEntrada % 5 == 0){
		string = string "Plang";	
	}
	
	if(variavelDeEntrada % 7 == 0){
		string = string "Plong";
	}
	else{
:q
		string = variavelDeEntrada;
	}
	return string;
}




#inicialização das variáveis
BEGIN{
	rainDropSound = "";
	rainDropSound = waterSound($0);
}


#printar resultados
END{
	print(rainDropSound);
}
