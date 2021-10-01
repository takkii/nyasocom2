namespace :db do
  desc 'Dump the database to tmp/dbname.dump'
  task dump: %i[environment load_config] do
    sh "mysqldump -u root -p -x --all-databases > tmp/nyasocom2.dump"
  end

  desc 'Restore the database from tmp/dbname.dump'
  task restore: %i[environment load_config] do
    sh "mysql -u root -p < tmp/nyasocom2.dump"
  end

  desc 'Dump and reset'
  task dump_reset: %i[environment load_config] do
    Rake::Task['db:dump'].invoke
    Rake::Task['db:migrate:reset'].invoke
  end

  desc 'Dump and reset and restore'
  task dump_reset_restore: %i[environment load_config] do
    Rake::Task['db:dump'].invoke
    Rake::Task['db:migrate:reset'].invoke
    Rake::Task['db:restore'].invoke
  end
end