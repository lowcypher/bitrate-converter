#!/bin/bash
#
#Descricao: script conversor de bitrate em mp3 - vários diretórios em lote.
#resultado final: diretorios e arquivos novos, conservando os nomes originais
#como subdiretorios do diretorio de nome 128 (bitrate convertido a 128 kbp/s)
#
#O script le um diretorio/subdiretorio com arquivos mp3 e gera uma lista
#em arquivo txt. Nesta lista há somente o nome do diretório, não seus arquivos.
#A partir desta lista, gera o diretório 128 com subdiretório como nome original.
#
#O script lê cada diretório listando somente os arquivos com extensão mp3 e
#converte os mesmos para bitrate 128 kbp/s, mantendo o nome original e os
#metadados ID3 ou ID2, se houver.
#
#Dependências: biblioteca lame, sed (este último não sendo obrigatório - leia
#a linha onde ele é utilizado e veja se é realmente necessário).
#
#Observação 0: manter aspas simples e duplas como estão dispostas no script
#Observação 1: o script segue a seguinte ordem:
#o ls com parâmetros, lê o diretório raiz onde se encontra o script, grava a
#saída em arquivo texto, usa o cat com while fazer um loop de leitura e envia
#para o echo gerar o script com os dados do arquivo txt gerado no início.
#ao final, gera o arquivo com os parâmetros e comandos do lame converter os
#arquivos mp3, criando os diretórios específicos e respectivos de cada diretório
#original.
#ao término de cada diretório, inicia-se a criação do próximo e a conversão
#dos respectivos arquivos mp3, até o final da lista.
#Observação 2: é recomendado remover os arquivos txt e sh gerados pelo script,
#uma vez que por qualquer motivo, rodar este script novamente no mesmo diretório
#estes mesmos arquivos poderão conflitar com o comandos do script gerador.
#
#Data: 2018-04-24
#Autor: Mario Medeiros
#Versao: 0.1
############################################################################
############################################################################

#lista somente os diretórios do diretório raiz do script
#gera o arquivo com os nomes do diretórios em lista
ls -F | grep "/" > lista-dir.txt

#cat lê o arquivo com a lista dos diretórios gerado pelo ls
#o echo grava no arquivo lista-dir.txt os parâmetros do script para iniciar a
#conversão dos arquivos
cat lista-dir.txt | while read line
do
echo 'mkdir -p "128/'$line'" && cd "'$line'" ; for f in *.mp3 ; do lame --mp3input -b 128 "$f" "../128/'$line'"/"$f" ; done
cd ..' >> 666-converter.txt
done

#script gerado, em formato txt, é copiado com extensão sh
cp 666-converter.txt 666-converter.sh &&

#o sed adiciona a instrucao no arquivo para ser um shellscript
#é mais um detalhe do que uma obrigatoriedade.
#tentando deixar o mais legal possível
sed -e '1i\' -e '#!/bin/bash' -i 666-converter.sh &&

#deixa o arquivo executável
chmod +x 666-converter.sh &&

#executa o script para iniciar a conversão dos mp3s
./666-converter.sh
