# Projeto

Desenvolvimento de um projeto de automação Back-end.

Passada uma Collection do Postman, criar alguns cenários nas rotas da API. Para efetuas os testes utilizo o framework [HTTParty](https://github.com/jnunemaker/httparty) com linguagem [Ruby](https://www.ruby-lang.org/pt/about/)

## Índice

- [O que foi feito?](#o-que-foi-feito)
- [Instalação](#instalação)
- [Cenários criados](#cenários-propostos)
- [Testes](#testes)

## O que foi feito?
Procurei utilizar as boas práticas para automação, o projeto possui a gem rubocop para análise e melhoria do código, utilizei a gem faker para criar dados aleatórios e também a gem rake para criar tarefas de testes.
Utilizei PageObject para o mapeamento dos elementos e para criação de métodos que facilitam o desenvolvimento dos steps. Utilizei o Rspec para validações e também fiz validações com o próprio Watir.

## Instalação

1- Utilizei o Ruby na versão 2.5.7

Para instalar recomendo o rbenv para gerenciar as versões
[Instação Rbenv/Ruby](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04-pt)

2- Clonar o projeto do Github
```
git clone git@github.com:rrafaelsoaress/teste_watir.git
```
3- Na pasta do projeto executar o bundle
```
bundle install
```
## Cenários propostos
1- Usar o endpoint de 'Criar um Usuario' para criar um usuário válido, e então validar se o mesmo foi criado no endpoint 'Listar todos Usuarios'.

2- Alterar o nome deste usuário criado com o endpoint 'Alterar dados do Usuario' e então validar as alterações no endpoint 'Listar um unico Usuario'

3- Deletar o usuário criado no endpoint 'Deletar Usuario' e validar se o mesmo foi removido no endpoint 'Listar todos Usuarios'.


## Testes
Todos os testes foram criados com tags: 

- Para rodar todos os testes
```
cucumber
```

- Para rodar um testes especifico:

```
cucumber -t @tag
```

Também foi criada rakes das funcionalidades, o codigo abaixo ira rodar os testes correspondentes a sua funcionalidade.
```
1- Criar usuário
rake criar_usuario

2- Alterar os dados do usuário
rake alterar_usuario

3- Deletar usuário
rake deletar_usuario

4- Todos os testes do desafio
rake todos_os_testes

4- Todos os testes criados
rake todos_os_testes_criados
```