echo " **** BEINVENIDO A IMPRIMIENDO FIGURAS ****"
echo " *** ELIGE OPCION ***"
echo " 1. IMPRIMIR UN RECTANGULO/CUADRADO "
echo " 2. IMPRIMIR UN TRIANGULO "
echo " 3. IMPRIMIR UN CIRCULO "
echo " 4. SALIR "
read numero
interruptor=$false

while [ $interruptor -eq $false ]
do
if [ $numero -eq 1 ]
then
       statement1
 elif [ $numero -eq 2 ]
then
       statement2
 elif [$numero -eq 3 ]
then
       statement3
 elif [$numero -eq 4 ]
      statement_n
fi
done