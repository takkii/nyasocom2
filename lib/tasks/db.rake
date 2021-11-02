require 'date'

namespace :db do
  Onetoday = Date.today
  desc 'Dump the database to backup/dbname.dump'
  task my_dump_backup: %i[environment load_config] do
    sh "mysqldump --single-transaction -u root -p -x --all-databases > backup/#{Onetoday}_nyasocom2_backup.dump"
  end

  desc 'Dump the database to tmp/dbname.dump'
  task dump: %i[environment load_config] do
    sh "mysqldump --single-transaction -u root -p nyasocom_beta_development > tmp/nyasocom_beta_development.dump"
  end

  desc 'Restore the database from tmp/dbname.dump'
  task restore: %i[environment load_config] do
    sh "mysql -u root -p < tmp/nyasocom_beta_development.dump"
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

  desc 'Default database command'
  task default_db: %i[environment load_config] do
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end

  desc 'create and migrate and seed'
  task my_default_db: %i[environment load_config] do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['db:seed'].invoke
  end
end