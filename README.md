# bitrate-converter
Convertendo bitrate de arquivos mp3 em lote

(http://www.mariomedeiros.eti.br/artigos/index.php?article44/convertendo-bitrate-de-arquivos-mp3-em-lote-mantendo-nomes-e-outros-atributos)

E eis que um belo dia seu aparelho celular ou smartphone (tanto faz), lhe alerta que você não tem mais espaço para colocar nem mesmo uma musiquinha do tamanho da vinheta de programa televisivo de domingo.

Seu poderoso AiFoni já ocupou todo seu 1 bit (é isso mesmo, bit, não é Yota Bytes não) de armazenamento. Tá bom, tá bom, exagerei um pouco.

Mas o cenário é o seguinte: tudo que é mp3 que tem no seu aparelho móvel está em 320kbp/s, ocupando mais espaço que o necessário. Imagina ter uns 32 GB só de MP3, tudo em alta qualidade. Até aí tudo ótimo. Na verdade não é bem assim. Outros recursos começam a brigar para ocupar os réles mega bytes, até mesmo kilo bytes de espaço que estão misteriosamente, desaparecendo.

Vamos resolver isso, apagar tudo que é inutilidade do treko. Começando pelas fotos tiradas no carnaval, quando você estava fantasiado de melancia com farinha na praia, mas espera ai, essas fotos já foram retiradas/copiadas por medida de segurança, claro.

Xiiiiii, então ficaram os aplicativos. Fácil!! Remove os inúteis!!!

Tá bom, aqueles aplicativos de astrologia e auto-ajuda não podem sair. São “extremamente necessários e importantes” para você. Entendo. Então apaga tudo os seus mp3 de fanqui, de sertanojo breganejo, electro-brega e afins.

Não?? Não pode também??? Tá certo!! Gosto não se discute, se lamenta!!

Mas então que tal, liberar espaço no treko, sem apagar as fotos de qualidade duvidosa, os aplicativos “sérios” e manter seus mp3 de “alto nível”? Gostou da idéia? Então vamos fazer o seguinte: reduzir o tamanho dos MP3s sem perda perceptível de qualidade de áudio (qualidade de áudio, não das músicas em si. Esse é um outro problema, fora desse escopo).

Reduzir o bitrate de cada uma das músicas, vai reduzir até mais da metade do tamanho dos arquivos e liberar espaço necessário no aparelho.

Lembrando que deverá apagar os arquivos originais e colocar os outros convertidos.

Infelizmente, da forma que solucionei esse problema, não faz o próprio arquivo no aparelho reduzir de tamanho por mágica. Não é essa a idéia!!

Um script em shell lista os arquivos e os converte, copiando em outro diretório, mantendo os atributos do mesmo, mudando somente o bitrate e consequentemente seu tamanho.

O script está comentado cada linha, facilitando o entendimento, espero.

Adapte de acordo com suas necessidades. Melhorias e críticas são bem-vindas.
