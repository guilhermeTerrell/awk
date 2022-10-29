#Resolução do exercício 3 de awk disponível no site exercism.org
#Raindrop sounds
#
#inputNumber % 3 == 0 -> Pling
#inputNumber % 5 == 0 -> Plang
#inputNumber % 7 == 0 -> Plong
#
#para executar esse programa via terminal basta digitar:
#gawk -v num=number -f exercicio3.awk
#Lembre-se de trocar "number por algum número!"
#

#Função que concatena string a depender do
#resultado da divisão modular
function raindropSound(inputNumber){
	string = "";
	if(inputNumber % 3 == 0) string = string "Pling";
	if(inputNumber % 5 == 0) string = string "Plang";
	if(inputNumber % 7 == 0) string = string "Plong";
	if(string == "") string = inputNumber;
	print(string);
}

# Repare que, quando utilizamos o parâmetro -v
# Devemos passar o nome da variável, e não $0, $1, ...
BEGIN{
	raindropSound(num);
}


