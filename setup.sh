main() {
    echo "Clonando repositório da api..."
    git clone git@github.com:Axiotes/api-planify.git

    echo "Clonando repositório do app..."
    git clone git@github.com:Axiotes/app-planify.git

    echo "Relizando o build da aplicação..."
    docker-compose build

    echo "Iniciando a aplicação..."
    docker-compose up
}

main