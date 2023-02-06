#!/bin/bash
function header(){
      echo "******************************************************"
      echo "*                                                    *"
      echo "*        BIENVENIDO A DESCUBRIR EL NUMERO            *"
      echo "*                                                    *"
      echo "******************************************************"
      echo "                                                       "
}

function menu(){
      echo "******************************************************"
      echo "*                                                    *"
      echo "*            SELECCIONA UNA OPCIÓN                   *"
      echo "*                                                    *"
      echo "*      1. DESCUBRE EL NUMERO EN UN RANGO ESPECIFICO  *"
      echo "*                                                    *"
      echo "*      2. SALIR                                      *"
      echo "*                                                    *"
      echo "******************************************************"
}

header
menu
read opcion

while [ $opcion != 2 ];
do
      indice=0
      if [[ $opcion -eq 1 ]];
      then
       echo "Introduce el numero mínimo: "
       read minimo
       echo "Introduce el numero maximo: "
       read maximo
       adivinar=$(($maximo-$minimo+1))
       echo "Introduce un numero: "
       read numero
       while [ $numero -ne $adivinar ]
       do
            if [[ $numero > adivinar ]];
            then
             indice=$((indice+1))
             echo "Demasiado grande vuelve  aprobar: "
             read numero
            else
             indice=$((indice+1))
             echo "Demasiado pequeño vuleve a probar: "
             read numero
            fi
       done
       echo "Henorabuena has conseguido descifrar el numero $adivinar oculto"    
      else
            echo "Numero introducido incorrecto"
      fi
      menu
      read opcion
done

