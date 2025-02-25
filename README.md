# Planify
Agenda digital prática e eficiente, projetada para ajudar os usuários a organizarem suas tarefas e compromissos com facilidade, a qualquer hora e em qualquer lugar.

## Tecnologias utilizadas
- Angular
- Express
- Docker
- JWT
- MySQL

## Principaos funcionalidades
- Login e Cadastro
- Alterar informações de usuário
- Criação e edição de atividades
- Marcar e desmarcar atividades como feita

## Instalação do Projeto
### Pré-requisitos
1. **Git**
    - É necessário que tenha o **git** na sua última versão
    - Verificar se o git está instalado:
    ```bash
    git --version
    ```
    - Caso não esteja instalado, é possível instalar através do [Downloads - Git](https://git-scm.com/downloads)
2. **Docker**
    - É necessário que tenha **docker** para realizar execução do projeto
    - Verificar se o Docker está instalado
   ```bash
   docker --version
   ```
   - Caso não esteja instalado, é possível instalar através do [Docker Docs](https://docs.docker.com/engine/install/)

### Processo de instalação e execução do projeto
1. Clonar o repositório na sua máquina
```bash
git clone git@github.com:Axiotes/planify.git
```
2. Entrar no diretório
```bash
cd planify
```
3. Configurações de Ambiente
   #### Portas:
     - Verifique se as portas utilizadas na aplicação estão disponíveis
     - Front-end: 4200
     - Back-end: 3000
     - Banco de dados: 3306
     - Caso seja necessário, é possível alterar essas portas nos arquivos `docker-compose.yml` em `"ports"` e nos `Dockerfile` em `EXPOSE`
   #### Banco de dados:
     - Crie um banco de dados chamado "db_planify"
     - Verifique a porta de conexão utilizada
   #### ENV
     - No diretório da api haverá um arquivo de texto chamado `env_dist`, copie o texto do arquivo
     - Crie um arquivo chamado `.env`, cole o que foi copiado
     - Preencha a chave `HOST` com `"db"`
     - Preencha as chaves de `USER_NAME` e `PASSWORD` com o user e senha do seu banco de dados (entre aspas duplas)
     - Preecha a chave `PORT` com a porta de conexão do banco de dados
     - Preencha a chave `JWT_SECRET` com um string do seu desejo
5. Realizar o build da aplicação
```bash
docker-compose build
```
6. Executar aplicação
```bash
docker-compose up
```
