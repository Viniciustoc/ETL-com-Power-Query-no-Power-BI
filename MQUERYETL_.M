let
/*O Objetivo dessa etapa é padronizar os nomes removendo prefixos como "Sr, Sra, espaços nao utilizames, letras maiusculas e minusculas incorretas. Exemplo correto: "Ana Beatriz Barbosa" */

//Cria a tabela manualmente
    Fonte = Table.FromRecords(
    {
    [Nome="Gustavo Garcia", Idade=23, Cidade="Manaus", RendaMensal=4777, Ativo=false],
    [Nome="Dr. Bryan Cavalcanti", Idade=41, Cidade="Salvador", RendaMensal=3478, Ativo=true],
    [Nome="Anna Liz Moreira", Idade=39, Cidade="Cuiabá", RendaMensal=5618, Ativo=false],
    [Nome="Helena Lopes", Idade=25, Cidade="João Pessoa", RendaMensal=4602, Ativo=false],
    [Nome="Melissa Cirino", Idade=46, Cidade="São Paulo", RendaMensal=7295, Ativo=true],
    [Nome="Renan Jesus", Idade=58, Cidade="Curitiba", RendaMensal=7939, Ativo=true],
    [Nome="Liz Novais", Idade=45, Cidade="Belo Horizonte", RendaMensal=7971, Ativo=true],
    [Nome="Igor da Cruz", Idade=51, Cidade="João Pessoa", RendaMensal=7758, Ativo=true],
    [Nome="Sra. Caroline Nascimento", Idade=44, Cidade="Brasília", RendaMensal=8130, Ativo=false],
    [Nome="Joana Viana", Idade=22, Cidade="Goiânia", RendaMensal=5625, Ativo=true],
    [Nome="Ana Vitória Casa Grande", Idade=25, Cidade="Campo Grande", RendaMensal=9406, Ativo=true],
    [Nome="João Gabriel Farias", Idade=36, Cidade="Manaus", RendaMensal=6388, Ativo=true],
    [Nome="Sr. Bryan Mendes", Idade=43, Cidade="Vitória", RendaMensal=3371, Ativo=false],
    [Nome="Ana Carolina Alves", Idade=34, Cidade="Campo Grande", RendaMensal=4514, Ativo=true],
    [Nome="Valentim Correia", Idade=51, Cidade="Belém", RendaMensal=8817, Ativo=true],
    [Nome="Marcos Vinicius Barros", Idade=41, Cidade="Aracaju", RendaMensal=2839, Ativo=true],
    [Nome="Caleb da Mota", Idade=46, Cidade="Fortaleza", RendaMensal=4004, Ativo=false],
    [Nome="Lívia Siqueira", Idade=59, Cidade="Fortaleza", RendaMensal=3773, Ativo=false],
    [Nome="Joaquim Nunes", Idade=26, Cidade="Porto Alegre", RendaMensal=5705, Ativo=false],
    [Nome="Luara Monteiro", Idade=49, Cidade="Aracaju", RendaMensal=8416, Ativo=false],
    [Nome="Sra. Kamilly Siqueira", Idade=59, Cidade="Manaus", RendaMensal=2756, Ativo=false],
    [Nome="Liz Novais", Idade=32, Cidade="Goiânia", RendaMensal=6154, Ativo=true],
    [Nome="Aurora Cassiano", Idade=50, Cidade="Aracaju", RendaMensal=4261, Ativo=false],
    [Nome="Dr. Carlos Eduardo Casa Grande", Idade=53, Cidade="Porto Alegre", RendaMensal=4645, Ativo=true],
    [Nome="Eduarda Mendonça", Idade=25, Cidade="João Pessoa", RendaMensal=9719, Ativo=true],
    [Nome="Yago Cirino", Idade=49, Cidade="Belém", RendaMensal=4983, Ativo=false],
    [Nome="Isaac Ferreira", Idade=46, Cidade="Goiânia", RendaMensal=3824, Ativo=true],
    [Nome="Ana Julia Peixoto", Idade=41, Cidade="Aracaju", RendaMensal=6319, Ativo=true],
    [Nome="Caroline Martins", Idade=20, Cidade="Goiânia", RendaMensal=9873, Ativo=true],
    [Nome="Arthur Miguel Siqueira", Idade=37, Cidade="Belo Horizonte", RendaMensal=4428, Ativo=false],
    [Nome="ANA", Idade=28, Cidade="Curitiba", RendaMensal=3500, Ativo=true],
    [Nome="bruno", Idade=22, Cidade="São Paulo", RendaMensal=4200, Ativo=false],
    [Nome="CAMILA", Idade=31, Cidade="Curitiba", RendaMensal=5100, Ativo=true],
    [Nome="Die go", Idade=25, Cidade="Belo Horizonte", RendaMensal=3000, Ativo=true],
    [Nome="eduarda", Idade=29, Cidade="Porto Alegre", RendaMensal=4800, Ativo=true],
    [Nome="FElipe", Idade=35, Cidade="Rio de Janeiro", RendaMensal=6000, Ativo=false],
    [Nome="Gabri ela", Idade=26, Cidade="Florianópolis", RendaMensal=3750, Ativo=true],
    [Nome="HUGO", Idade=40, Cidade="São Paulo", RendaMensal=7200, Ativo=true],
    [Nome="isa bela", Idade=23, Cidade="Salvador", RendaMensal=2900, Ativo=false],
    [Nome="João", Idade=33, Cidade="Brasília", RendaMensal=5500, Ativo=true],
    [Nome="KARINA", Idade=27, Cidade="Recife", RendaMensal=4100, Ativo=true],
    [Nome="Leonardo", Idade=38, Cidade="Manaus", RendaMensal=6800, Ativo=false],
    [Nome="MARIANA", Idade=24, Cidade="Fortaleza", RendaMensal=3200, Ativo=true],
    [Nome="Nico las", Idade=30, Cidade="Goiânia", RendaMensal=5300, Ativo=true],
    [Nome="olívia", Idade=45, Cidade="São Paulo", RendaMensal=8000, Ativo=false],
    [Nome="PAULO", Idade=32, Cidade="Vitória", RendaMensal=4700, Ativo=true],
    [Nome="quei la", Idade=28, Cidade="Belém", RendaMensal=3900, Ativo=true],
    [Nome="Rafael", Idade=36, Cidade="Campinas", RendaMensal=6200, Ativo=false],
    [Nome="SOFIA", Idade=29, Cidade="Curitiba", RendaMensal=5400, Ativo=true],
    [Nome="thiago", Idade=41, Cidade="Porto Alegre", RendaMensal=7500, Ativo=true],
    [Nome="LUI Z", Idade=27, Cidade="São Paulo", RendaMensal=3800, Ativo=true],
    [Nome="marcela", Idade=34, Cidade="Recife", RendaMensal=5800, Ativo=false],
    [Nome="RODRIGO", Idade=29, Cidade="Belo Horizonte", RendaMensal=4200, Ativo=true],
    [Nome="Patr icia", Idade=31, Cidade="Porto Alegre", RendaMensal=5100, Ativo=true],
    [Nome="GUSTAVO", Idade=26, Cidade="Florianópolis", RendaMensal=3600, Ativo=false],
    [Nome="fernanda", Idade=39, Cidade="Salvador", RendaMensal=6700, Ativo=true],
    [Nome="Car los", Idade=42, Cidade="Brasília", RendaMensal=7300, Ativo=true],
    [Nome="JULIA", Idade=24, Cidade="Fortaleza", RendaMensal=3100, Ativo=false],
    [Nome="an tonio", Idade=37, Cidade="Manaus", RendaMensal=5900, Ativo=true],
    [Nome="LETICIA", Idade=28, Cidade="Curitiba", RendaMensal=4500, Ativo=true],
    [Nome="RAFAEL", Idade=30, Cidade="Goiânia", RendaMensal=4800, Ativo=true],
    [Nome="CAMILA", Idade=33, Cidade="Campinas", RendaMensal=5500, Ativo=false],
    [Nome="PEDRO", Idade=25, Cidade="Belém", RendaMensal=3900, Ativo=true],
    [Nome="MARIANA", Idade=36, Cidade="Vitória", RendaMensal=6200, Ativo=true],
    [Nome="BRUNO", Idade=29, Cidade="João Pessoa", RendaMensal=4100, Ativo=false],
    [Nome="ANA", Idade=45, Cidade="Natal", RendaMensal=7800, Ativo=true],
    [Nome="FELIPE", Idade=23, Cidade="São Luís", RendaMensal=3400, Ativo=false],
    [Nome="LAURA", Idade=32, Cidade="Maceió", RendaMensal=5300, Ativo=true],
    [Nome="DANIEL", Idade=38, Cidade="Campo Grande", RendaMensal=6500, Ativo=true],
    [Nome="SARA", Idade=27, Cidade="Teresina", RendaMensal=4000, Ativo=false],
    [Nome="Heitor Vasconcelos", Idade=54, Cidade="Recife", RendaMensal=3486, Ativo=true],
    [Nome="Maria Alice Silva", Idade=20, Cidade="Florianópolis", RendaMensal=8225, Ativo=true],
    [Nome="Melissa Gonçalves", Idade=24, Cidade="Porto Alegre", RendaMensal=9008, Ativo=false],
    [Nome="Dra. Ana Beatriz Costa", Idade=47, Cidade="Rio de Janeiro", RendaMensal=7813, Ativo=false],
    [Nome="Lucas da Paz", Idade=38, Cidade="Recife", RendaMensal=2859, Ativo=true],
    [Nome="Dr. Josué Pastor", Idade=31, Cidade="Salvador", RendaMensal=6794, Ativo=true],
    [Nome="Sra. Manuella Nogueira", Idade=31, Cidade="Aracaju", RendaMensal=9509, Ativo=false],
    [Nome="Maria Júlia Gomes", Idade=44, Cidade="Aracaju", RendaMensal=4963, Ativo=true],
    [Nome="Laís da Costa", Idade=54, Cidade="Brasília", RendaMensal=6797, Ativo=false],
    [Nome="Anthony Gabriel Sousa", Idade=37, Cidade="Curitiba", RendaMensal=7038, Ativo=true],
    [Nome="Davi Farias", Idade=55, Cidade="Goiânia", RendaMensal=6358, Ativo=true],
    [Nome="Laís Dias", Idade=38, Cidade="Manaus", RendaMensal=3459, Ativo=true],
    [Nome="Sra. Sofia Freitas", Idade=29, Cidade="Belo Horizonte", RendaMensal=3880, Ativo=false],
    [Nome="Sr. Guilherme Oliveira", Idade=34, Cidade="Curitiba", RendaMensal=8655, Ativo=true],
    [Nome="Henry Câmara", Idade=55, Cidade="João Pessoa", RendaMensal=9599, Ativo=false],
    [Nome="Aurora Monteiro", Idade=34, Cidade="São Paulo", RendaMensal=4240, Ativo=false],
    [Nome="Camila Duarte", Idade=41, Cidade="Porto Alegre", RendaMensal=7230, Ativo=true],
    [Nome="Sr. Danilo Camargo", Idade=31, Cidade="Belo Horizonte", RendaMensal=6741, Ativo=true],
    [Nome="José Mendonça", Idade=45, Cidade="Campinas", RendaMensal=2658, Ativo=false],
    [Nome="Juan Rezende", Idade=28, Cidade="Salvador", RendaMensal=5379, Ativo=true],
    [Nome="Otávio Sá", Idade=28, Cidade="Aracaju", RendaMensal=9047, Ativo=true],
    [Nome="Sr. Anthony da Rocha", Idade=29, Cidade="Manaus", RendaMensal=2686, Ativo=true],
    [Nome="Matteo Rocha", Idade=51, Cidade="Belo Horizonte", RendaMensal=3902, Ativo=true],
    [Nome="Dr. Leandro Almeida", Idade=31, Cidade="Brasília", RendaMensal=9711, Ativo=true],
    [Nome="Dr. Dom Melo", Idade=55, Cidade="Fortaleza", RendaMensal=5283, Ativo=false],
    [Nome="Maria Liz Rezende", Idade=29, Cidade="São Paulo", RendaMensal=9238, Ativo=true],
    [Nome="Maria Laura Carvalho", Idade=33, Cidade="Belém", RendaMensal=8379, Ativo=true],
    [Nome="Ana Beatriz Barbosa", Idade=31, Cidade="Cuiabá", RendaMensal=6709, Ativo=false],
    [Nome="Matheus Borges", Idade=35, Cidade="Vitória", RendaMensal=6681, Ativo=true],
    [Nome="Ísis Caldeira", Idade=31, Cidade="Salvador", RendaMensal=8599, Ativo=true]
    }),
//Altera os tipos de cada coluna   
    Tipo_Alterado = Table.TransformColumnTypes(Fonte, {
        {"Nome", type text},
        {"Cidade", type text},
        {"Idade", type number},
        {"RendaMensal", type number},
        {"Ativo", type logical}
    }),
//Ordena em ordem crescente por renda mensal
    Ordenado = Table.Sort(Tipo_Alterado, {{"RendaMensal", Order.Descending}}),

//-------------------------------------------------------------------------------------

/*Etapa 1: Tratamento dos nomes 
Abaixo código que utilizei para concluir a primera etapa*/
/*Explicação do código
    1.Crio a variavel Nomes Padronizados sera responsavel todo o codigo
    2.Adiciono uma nova coluna com (Table.AddColumn) "Nome Limpo" onde ficará os nomes após tratamento
    3.Obtenho o nome original com a variavel "nomeOriginal
    4.Crio uma lista "prefixos" para armazenar o que eu quero remover dos nomes
    5.Crio a variavel "nomeSemPrefixo" e utilizo o List.Accumulate que itera sobre cada prefixo da lista para encontra-lo no nomeOriginal e remove-lo 
    --Aqui ja temos os nomes sem prefixos, porem ainda com espaços, letras maisculas e minusculas incorretas
    6.Utilizo o Text.Split para quebrar os nomes em partes, exemplo ("Ana  Beatriz Barbosa") sera quebrado em ("Ana", " ", "Beatriz", "Barbosa") pois espaços duplicados geram campos vazios
    7.Após quebrar o texto, o List.Select atua mantendo apenas os textos que atendem a condição de ["<>(diferente" ""(vazio"] ou seja, tudo que nao estiver vazio sera mantido
    8.Utilizo o Text.Combine para unir novamente o que separamos na etapa 6. exemplo ("Ana", " ", "Beatriz", "Barbosa") volta a ser "Ana Beatriz Barbosa" agora sem o espaço duplicado pois removemos na etapa 7
    9.Por fim, uilizo Text.Lower para deixar tudo minusculo, e Text.Proper para deixar a primeira letra de cada texto maiuscula 
*/
NomesPadronizados = Table.AddColumn(
    Fonte,
    "Nome Limpo",
    each 
        let
            nomeOriginal = [Nome],
            prefixos = {"Sr. ", "Sra. ", "Dr. ", "Dra. "},
            nomeSemPrefixo = List.Accumulate( 
                prefixos,
                nomeOriginal,
                (estado, prefixo) => Text.Replace(estado, prefixo, "")
            ), 
            palavras = List.Select(Text.Split(nomeSemPrefixo, " "), each _ <> ""),
            nomeSemEspacos = Text.Combine(palavras, " "),
            nomePadronizado = Text.Proper(Text.Lower(nomeSemEspacos))
        in
            nomePadronizado,
    type text
    ),

/*Etapa 2: Filtrar pessoas com renda > 6000 e status Ativo
/*Expliccação do codigo
    1.Crio a variavel que armazenara o codigo de filtro "FiltrandoRenda"
    2.Utilizo Table.SelectRows para selecionar o que eu quero filtrar e com qual condição.
*/
//FiltrandoRenda = Table.SelectRows(NomesPadronizados,[RendaMensal] > 6000 and [Ativo] = true), !!!Codigo comentado, ativo apenas para consulta rapida!!!

/*Etapa 3: Agregando os dados por cidade*/
/*Explicação do codigo
    1.Duplico a tabela no power query para gerar tabela somente para analise por cidades
    2.Crio a variavel AgrupadoCCidade que armazenará todo o codigo
    3.Utilizo Table.Group para agrupar as informações em uma nnova tabela
    4.Declaro que irei utilizar a coluna Cidade da tabela antiga
    5.Monto a tabela utilizando a estrutura de: 1° Nome da coluna, 2° each + função, 3° tipo da coluna
*/
    AgrupadoCidades =   
        Table.Group(
            NomesPadronizados, 
                {"Cidade"}, {
                    {"QtdPessoas", each Table.RowCount(_), Int64.Type},
                    {"RendaMedia", each List.Average([RendaMensal]), type number},
                    {"RendaMax", each List.Max([RendaMensal]), type number},
                    {"RendaMin", each List.Min([RendaMensal]), type number}
                }
            ),

/*Etapa 4: Definindo faixa etaria em uma nova coluna*/
/*Explicação do codigo:
    1.Crio a variavel FaixaEtaria que armazenará todo o código
    2.Utilizo Table.addColumn para adicionar uma nova coluna com a logica:
     se a coluna Idade for menor que 25 entao retorna "Jovem"
     se a coluna Idade for maior que 25 e menor que 34 retorna "Jovem Adulto"
     se a coluna Idade for maior que 34 e menor que 49 retorna "Adulto"
     se nao for nenhuma das condições acima, significa que é maior que 50, entao retorna "Idoso"
     */
    FaixaEtaria = Table.AddColumn(NomesPadronizados,"Faixa Etaria", each
        if [Idade] < 25 then "Jovem"
        else if [Idade] < 34 then "Jovem Adulto"
        else if [Idade] < 49 then "Adulto"
        else "Idoso",
        type text),

/*Etapa 5: Classificando Renda mensal*/
/*Explicação do codigo; 
    1.Crio a variavel ClasseSocial que armazenará todo o codigo
    2.Adiciono uma coluna com um teste logico semelhante a etapa 4, porem com os valores da RendaMensal
*/
    ClasseSocial = Table.AddColumn(FaixaEtaria, "Classe Social", each
        if [RendaMensal] < 3000 then "Baixa"
        else if [RendaMensal] < 5999 then "Media"
        else if [RendaMensal] < 8999 then "Alta"
        else "Muito Alta" 
        ),

/*Etapa 6: Aplicando regras de negocios para encontrar inconsistencias*/
/*Explicação do cogido: 
    1.Crio a variavel Inconsistencia que armazenará todo o codigo
    2.Adiciono uma coluna assim como nos passos 5 e 4, porem com uma logica diferente, utilizando "or" e como condição, utilizo mais de uma coluna
*/
    Inconsistencias = Table.AddColumn(ClasseSocial, "Inconsistencias", each
        if [Ativo] = true and [RendaMensal] < 3000 then "Renda muito baixa para ativo"
        else if [Idade] < 18 or [Idade] > 100 then "Idade invalida"
        else if Text.Length([Nome Limpo]) < 3 then "Nome muito curto"
        else "Ok"
        ),

/*Etapa 7: Editando tabela para finalização do projeto*/
/*Explicação do codigo:
    1.Crio a variavel AlterandoCabeçalho e utilizo Table.RenameColumns para renomear alguns titulos
    2.Crio a variavel OrganizandoColunas e utilizo Table.SelectColumns para editar as ordens de cada coluna
    3.Crio a variavel RemovendoColunasSujas para remover as colunas que tratamos, nesse caso, apenas a coluna Nome
 */
    AlterandoCabeçalho = Table.RenameColumns(
        Inconsistencias, {
            {"RendaMensal", "Renda Mensal"},
            {"Inconsistencia", "Inconsistências"}
        }),
    OrganizandoColunas = Table.SelectColumns(
        AlterandoCabeçalho, 
           {"Nome Limpo",
            "Cidade",
            "Idade",
            "Renda Mensal",
            "Ativo",
            "Faixa Etaria",
            "Classe Social",
            "Inconsistência",
            "Nome"}
    ),
    RemovendoColunasSujas = Table.RemoveColumns("Nome")

    in
        RemovendoColunasSujas

