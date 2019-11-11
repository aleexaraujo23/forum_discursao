# README

**Projeto Forum News! v.1**

* Desenvolvido em Ruby on Rails
* Aplicando o MVC
* DRY
* Clean code
* Rspec
* Guard-rspec
* Simplecov


Este software trata-se de um Forum, nomeado "Forum News!", no qual tem um intuito
de fornecer uma aplicação para debate, perguntas e respostas para os usuários.

**- Documentação Funcional**

*  Usuários nao cadastrados podem Apenas visualizar os Posts.
*  Apenas Usuários Cadastrados podem postar e comentar no Forum.
*  A cada comentario ou Post fica salvo o email do usuário que o fez.
*  Cada usuário cadastrado pode criar ou comentar quatos posts quiser.
*  Cada Post pode conter Título, Texto e uma imagem.
*  Cada Comentário pode conter Texto e uma imagem.
  

**- Aviso de versionamento**

*  Devido ainda ser a v1, para visualizar a caixa de emojis na área de Texto, atualize a página para visualizar.

**- Link do Projeto no Heroku**
https://nameless-brook-58986.herokuapp.com/


**- Instruções para Executar em Ambiente de Desenvolvimento**

1. Execute o  `bundle install` para Atualizar as Gems no Projeto
2. Execute o `rails db:create` e `rails db:migrate` para criar e migrar o DB 
3. Execute o `rails s` para subir o Servidor