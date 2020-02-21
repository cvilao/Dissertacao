echo "Bem Vindo ao Programa que compila o PDFlatex com o BIBTex da Dissertacao"
rm Dissertacao.lof
rm Dissertacao.aux
rm Dissertacao.lot
rm Dissertacao.loa
rm Dissertacao.toc
echo "Dissertacao.aux removido"
bibtex Dissertacao > Log_Bibtex_Dissertacao.txt
echo "BibTex Executado primeira vez"
bibtex Dissertacao > Log_Bibtex_Dissertacao.txt
echo "BibTex Executado segunda vez"
pdflatex Dissertacao.tex '> Log_Latex_Dissertacao.txt'

echo ""
echo "+-------------------------------------------------+"
echo "|                                                 |"
echo "|              Executando o LATEX                 |"
pdflatex Dissertacao.tex  > Log_Latex_Dissertacao.txt
echo "|   Gravando LOG em Log_Latex_Dissertacao.txt     |"
echo "|                                                 |"
echo "+-------------------------------------------------+"
echo "|                                                 |"
echo "|              Executando o BIBTEX                |"
bibtex Dissertacao > Log_Bibtex_Dissertacao.txt
echo "|   Gravando LOG em Log_Bibtex_Dissertacao.txt    |"
echo "|                                                 |"
echo "+-------------------------------------------------+"
echo "|                                                 |"
echo "|                Fim do Programa                  |"
echo "|                                                 |"
echo "+-------------------------------------------------+"
echo ""


 
