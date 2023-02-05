<<<<<<< HEAD
 #!/bin/bash
echo "****************************************************************"
echo "*                      Calculo de base                         *"
echo "****************************************************************"
echo "*                                                              *"
echo "*                    1. Area rectangulo                        *"
echo "*                    2. Area triangulo                         *"
echo "*                                                              *"
echo "****************************************************************"

read -p "Introduzca la opción deseada: " eleccion

controlador=false
echo $eleccion
while [controlador=false]; 
        do
            if [eleccion=$1]
            then
            read -p "introduzca la base del cuadrado" cuadrado
            for i in $cuadrado;
 
=======
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

while [ $opcion != 2 ]
do
      indice=0
      if [[ $opcion -eq 1 ]]
      then
       echo "Introduce el numero mínimo: "
       read minimo
       echo "Introduce el numero maximo: "
       read maximo
       adivinar=$[ $RANDOM % "$minimo" + "$maximo" ]
       echo "Introduce un numero: "
       read numero
       while [ $numero -ne $adivinar ]
       do
            if [[ $numero > adivinar ]]
            then
             indice=$((indice+1))
             echo "Demasiado grande vuelve  aprobar: "
             read numero
            else
             indice=$((indice+1))
             echo "Demasiado pequeño vuleve a probar: "
             read numero
       done
       echo "Henorabuena has conseguido descifrar el numero $adivinar oculto"

            
      else
            echo "Numero introducido incorrecto"
      fi
      menu
      read opcion
done
>>>>>>> a0831b27646cacf4ec747ccecad3e5fc5fb1cbbd

