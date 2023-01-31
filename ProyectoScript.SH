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


