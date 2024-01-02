# README

* Este documento fornece instruções sobre como configurar, executar e testar o aplicativo WebTechProva.

* Pré-requisitos
* Certifique-se de ter o seguinte instalado no seu sistema antes de prosseguir:

* Ruby 3.2.2
* PostgreSQL
* Configuração
* Clone o repositório:

* git clone https://github.com/brunnoferreiraa/webtechProva.git
Navegue até o diretório do projeto:

* cd webtechProva
Instale as dependências:

* bundle install
Copie o arquivo de exemplo de configuração do banco de dados:

* cp config/database.yml.example config/database.yml
* config/database.yml com suas credenciais do PostgreSQL.

* Banco de Dados
* Crie o banco de dados:

* rake db:create
* Execute as migrações:

* rake db:migrate
* Executando o Aplicativo
* Para iniciar o servidor, use o seguinte comando:

* rails server
* O aplicativo estará acessível em http://localhost:3000.

* Testes
* Para executar os testes, utilize o seguinte comando:

* rails test
* Estrutura de Pastas
* A estrutura de pastas do projeto é organizada da seguinte forma:

* app: Contém os modelos, visualizações e controladores.
* bin: Scripts executáveis.
* config: Configurações do aplicativo.
* db: Migrações e esquema do banco de dados.
* lib: Bibliotecas personalizadas.
* log: Arquivos de log.
* public: Arquivos públicos acessíveis via navegador.
* storage: Armazenamento de arquivos.
* test: Testes automatizados.
* temp: Arquivos temporários.
* vendor: Bibliotecas de terceiros.
