cloneRepositories() {
    echo "Clonando repositório da api..."
    git clone git@github.com:Axiotes/api-planify.git

    echo "Clonando repositório do app..."
    git clone git@github.com:Axiotes/app-planify.git
}

configEnv() {
    cd api-planify

    if [ ! -f ".env" ]; then
        echo "Criando o arquivo .env..."

        echo "HOST=db" > .env
        echo "DATABASE=db_planify" >> .env
        echo "USER_NAME=root" >> .env
        echo "PASSWORD=root" >> .env
        echo "PORT=3306" >> .env

        echo ".env criado com as configurações padrão."
    else
        echo ".env já existe. Verificando configurações..."
    fi

    cd ..
}

main() {
    cloneRepositories
    configEnv

    echo "Relizando o build e inicializando aplicação..."
    docker-compose up --build
}

main