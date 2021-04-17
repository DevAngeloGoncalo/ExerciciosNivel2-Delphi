# Exercícios

Exercícios propostos por <a href="https://github.com/andriwsluna">Andriws Luna</a> , Orientador em minha jornada como estagiário.

#### 1° Split file: 
Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT. A tela deverá ter dois campos do tipo Memo. Após a seleção do arquivo, o programa deverá lê-lo e dividí-lo. Meta das linhas deverá ser escrita no memo  da direita, e a outra metade no memo da esquerda.  OBS: Se a quantidade de linhas for ímpar, o memo da esquerda ficará com mais linhas.

#### 2° Odd Line select: 
Faça um programa semelhante ao programa do exercício 1, porém, as linhas de número ímpar deverão ser escrita no memo da esquerda, logo, as linhas de número par  no memo da direita.

#### 3° Criptografia fajuta: 
Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT. Após isto, o programa deverá criptografar todo o arquivo e gravar na mesma pasta do arquivo original. O nome do arquivo criptografado deverá ser concatenação do nome do arquivo original com o sufixo “_c”. A criptografia deverá utilizar a tabela ASCII, onde cada caractere criptografado deverá ser o caractere ASCII original + 10. 

Exemplo:

Texto original: ABCD0123456789 ;
Texto criptografado: KLMN:;<=>?@ABC;

*OBS: A partir de 266 deve-se contar a partir de 0. Ou seja:*
266 = 0
267 = 1

#### 4° Cadastro de alunos: 
Faça um programa, com interface visual VCL, que forneça o usuário uma opção de selecionar um arquivo com extensão .TXT.

Cada linha do arquivo contém um aluno na seguinte estrutura:

*NOME DO ALUNO | IDADE DO ALUNO | PESO DO ALUNO (Em KG) |*

- O programa deverá ler o conteúdo deste arquivo e armazenar os dados de forma estruturada.
- Além disto, deverá listar os alunos à esquerda (ListBox) e , conforme o usuário selecionar um aluno, o programa deverá mostra a idade e o peso do aluno, assim:


