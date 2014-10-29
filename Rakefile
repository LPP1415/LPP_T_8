require "bundler/gem_tasks"
task :default => :spec

desc "Ejecutar espectativas de Examen.rb"
task :spec do
  sh "rspec -I. spec/simpleChoice_spec.rb"
end

task :html do
  sh "rspec -f h spec/simpleChoice_spec.rb"
end

