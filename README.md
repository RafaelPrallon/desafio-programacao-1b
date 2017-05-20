 # Resolução do desafio de programação 1B

Programa de leitura de dados de arquivo para o banco de dados

Usou-se Ruby 2.3, Rails 4.2.5, SQLie para o banco ( com opção de postgres para ambientes de produção), além da gem rails-12-factor para que se possa fazer o deploy do projeto no Heroku. 
Outras ferramentas utilizadas foram o bootstrap 3 e a gem Carrierwave (https://github.com/carrierwaveuploader/carrierwave) para o upload de arquivos.

Para a o funcionamento da aplicação é necessário apenas que o usuário clone o conteúdo do projeto no GitHub e executar o comando bundle install. Os comandos para fazer-lo são:
$ git clone https://github.com/RafaelPrallon/desafio-programacao-1b
$ cd desafio-de-programação-1b
$ bundle install --without production
Para que o usuário possa realizar o teste sem a necessidade de criar um arquivo de dados, o arquivo "dados.txt" está disponível no repositório.

### Referência

Este desafio foi baseado neste outro desafio: https://github.com/lschallenges/data-engineering
