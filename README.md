# Desafio KXC - Simple API
Este repositório é o repositório utilizado para desenvolver o desafio proposto e também como referência para realizar a esteira de CI/CD através do GithubActions.

A arquitetura, na AWS, conta com um cluster de ECS, imagem no ECR, banco de dados no RDS, em camadas, utilizando duas subnets públicas e duas privadas e load balancer. A intenção é ainda incluir secrets manager para guardar a senha do acesso ao banco de dados e  parameter store para guardar as variáveis de ambiente utilizadas na task definition do ECS.

Todos os arquivos Terraform para subir a arquitetura estão disponíveis no link: https://github.com/saulooramos/desafio-kxc

## simple-api

### Descrição
Uma API em Node.js utilizando o Express Framework que realiza a conexão com um banco de dados PostgreSQL.

### Como utilizar
O comando para iniciar a API é **npm run start**

### Rotas
| Rota | Método | Descrição |
| --- | --- | --- |
/ | GET | Retorna uma mensagem estática.
/connect | GET | Realiza a conexão com o banco e retorna a versão da engine.


### Variáveis de Ambiente
| Nome | Description  | Padrão |
| --- |  --- |  --- |
API_PORT | Port da API Node | 3000
DB_DATABASE | Database do banco de dados | 
DB_HOST | Endereço do banco de dados | 
DB_PORT | Port do banco de dados | 5432
DB_USER | Usuário do banco de dados | 
DB_PASSWORD | Senha do banco de dados | 