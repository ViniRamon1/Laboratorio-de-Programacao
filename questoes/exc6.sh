res=0

while [ $res -ne 4 ]; do
  echo "(1) Status da utilização das partições do sistema."
  echo "(2) Relação de usuários logados."
  echo "(3) Data/Hora"
  echo "(4) Sair" && echo
  echo "Informe sua opção:"
  read res
	
  ## Preencha com cada uma das opções
  case $res in
   1) echo "Status:"
   DF -n 
   ;;
   2) echo "Usuarios:"
   who
   ;;
   3) echo "Data e hora"
   date
   ;;
   *) echo "Opcao invalida"
   esac
done
