#!/bin/bash

n_maior=1

while read linha; do
	campos=($linha)
	echo ${campos[0]}
	echo ${campos[4]}

	n1=${campos[4]}

	echo "Var n1: $n1"

	if test $n1 -gt $n_maior
	then
		n_maior=$n1
		usuario=${campos[0]}
	fi

done < input

echo "Usuário com maior size: $usuario"