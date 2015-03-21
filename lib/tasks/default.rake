Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined?(:default)

task :default => [
  :"db:migrate",
  :spec,
  :cucumber,
  :"cucumber:wip",
]
