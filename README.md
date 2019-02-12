# ruby_tiwitter

Está é uma simples aplicação que busca mensagem postadas no twitter a partir de hastags cadastrada na aplicação.

Para rodar está aṕlicação instale as seguintes ferramentas:

<strong>Docker</strong> <br>
<strong>Docker-compose</strong> <br>
<strong>Git</strong> <br>

Crie um arquivo .env e crie uma variavel de ambiente PASSWORD e coloque nela a senha
que deseja para acesso ao banco de dados. va no arquivo rails_app/config/database.yml e
altere password para a senha de acesso ao banco que você criou.
Após instalado essas ferramentas, de um git clone neste projeto e rode os seguintes comandos no terminal:

<strong>docker-compose build</strong> <br>
<strong>docker-compose run app bundle exec rails db:create</strong> <br>
<strong>docker-compose runa app bundle exex rails db:migrate</strong> <br>

Agora que já configurou o ambiente você pode subir a aplicação com o seguinte comando:

<strong>docker-compose up</strong> <br>
ou com <br>
<strong>docker-compose up -d </strong> (desta forma a aba do seu terminal fica livre para rodar outros comandos ) <br>

É isto galera, uma busca de aprendizado prático para minha programação em ruby on rails. Vocês são livres para dar dicas de melhorias e para melhorar e brincar com app. 
