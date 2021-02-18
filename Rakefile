require 'cucumber'
require 'cucumber/rake/task'

task :criar_usuario do |_task|
  puts 'Rodando os testes de Criação de Usuário'
  sh 'bundle exec cucumber -t @usuario_valido'
end

task :alterar_usuario do |_task|
  puts 'Rodando os testes de Alteração de Usuário'
  sh 'bundle exec cucumber -t @alterar_usuario'
end

task :deletar_usuario do |_task|
  puts 'Rodando os testes de Exclusão de Usuário'
  sh 'bundle exec cucumber -t @deletar_usuario'
end

task :todos_os_testes do |_task|
  puts 'Rodando os testes solicitados'
  sh 'bundle exec cucumber -t @teste'
end

task :todos_os_testes_criados do |_task|
  puts 'Rodando os testes criados'
  sh 'bundle exec cucumber'
end
