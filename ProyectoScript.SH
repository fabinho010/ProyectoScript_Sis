#!/bin/bash
function header(){
      echo "******************************************************"
      echo "*                                                    *"
      echo "*        BIENVENIDO A DESCUBRIR EL NÚMERO            *"
      echo "*                                                    *"
      echo "******************************************************"
      echo "                                                       "
}

function menu(){
      echo "******************************************************"
      echo "*                                                    *"
      echo "*            SELECCIONA UNA OPCIÓN                   *"
      echo "*                                                    *"
      echo "*      1. DESCUBRE EL NÚMERO EN UN RANGO ESPECÍFICO  *"
      echo "*                                                    *"
      echo "*      2. SALIR                                      *"
      echo "*                                                    *"
      echo "******************************************************"
}

header
menu
read -p "Introdudzca aquí tu elección: " opcion

while [ $opcion != 2 ];do
      indice=1
      if [[ $opcion -eq 1 ]]
       then
       read -p "Introduzca el numero mínimo: " minimo
       read -p "Introduzca el numero máximo: " maximo
       adivinar=$(($minimo + $RANDOM % $maximo))
       read -p "Adivine el número: "  numero;
       while [ $numero -ne $adivinar ];do
            if [[ $numero -gt adivinar ]]
            then
             indice=$((indice+1))
             read -p "Demasiado grande vuelve a probar: " numero
            else
             indice=$((indice+1))
             read -p "Demasiado pequeño el numero,vuelve a probar: " numero;
             fi
       done
       echo "Enhorabuena!!! Has conseguido descifrar el numero oculto que es el $adivinar"
       echo "Lo has acertado en $indice intentos."


      else
            echo "Valor introducido incorrecto.Vuelva a introducirlo"
      fi
      menu
      read -p "Introduzca tu elección: " opcion
done

echo "Gracias por jugar!!Vuelva la proxima vez"