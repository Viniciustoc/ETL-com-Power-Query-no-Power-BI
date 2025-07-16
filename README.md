🧩 ETL com Power Query (M) no Power BI
Padronização, Classificação e Validação de Dados Fictícios
Este projeto tem como objetivo demonstrar um processo completo de ETL (Extração, Transformação e Carga) realizado diretamente no Power BI, utilizando a linguagem M (Power Query). A base foi criada manualmente com registros fictícios de pessoas, permitindo a aplicação de regras de negócio, tratamentos e validações comuns em projetos reais de BI.

🧠 Objetivos
Criar uma base fictícia representando pessoas e suas informações (nome, idade, cidade, renda, status)
Aplicar transformações avançadas na linguagem M
Padronizar nomes com limpeza de prefixos e capitalização correta
Classificar indivíduos por faixa etária e classe social
Detectar inconsistências com base em regras de negócio
Preparar os dados para visualização em dashboards ou análises

🛠️ Tecnologias utilizadas
Power BI Desktop
Power Query (Linguagem M)

🔍 Etapas do projeto
Criação da base manual usando Table.FromRecords
Tipagem e ordenação dos dados
Padronização dos nomes com:
Remoção de prefixos como "Sr.", "Sra.", "Dr."
Remoção de espaços duplicados
Uso de Text.Proper e Text.Lower
Filtro por renda e status ativo
Agrupamento por cidade com cálculos de média, máximo e mínimo
Criação de nova coluna de faixa etária
Classificação por classe social com base na renda
Identificação de inconsistências como:
Renda muito baixa para status ativo
Idade inválida
Nome muito curto
Reorganização e renomeação final da base

📷 Imagens do Projeto
Para facilitar a visualização, adicionei imagens de cada etapa no diretório /imagens.

👨‍💻 Autor
Vinicius Gabriel Martins Stoc
📊 Estudante de Análise e Desenvolvimento de Sistemas
🔗 LinkedIn
📂 Projeto criado como parte do meu portfólio de dados

📌 Observações
Todos os dados são fictícios e utilizados apenas para fins didáticos

O projeto foi desenvolvido com foco em boas práticas de ETL no Power BI, com ênfase na linguagem M


