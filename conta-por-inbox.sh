#!/bin/bash


while read linha; do
	campos=($linha)
	
	n1=${campos[2]}

	if [ $n1 -ge 25000 ] && [ $n1 -le 48999 ];
	then
		condicao1=$((condicao1+1))
	elif [ $n1 -ge 49000 ] && [ $n1 -le 50000 ];
	then
		condicao2=$((condicao2+1))
	elif [ $n1 -gt 50001 ];
	then
		condicao3=$((condicao3+1))
	fi

done < input

echo "Quantidade entre 25000 e 48999: $condicao1"
echo "Quantidade entre 49000 e 50000: $condicao2"
echo "Quantidade acima de 50001: $condicao3"
