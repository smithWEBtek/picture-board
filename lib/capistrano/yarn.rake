namespace :yarn do
  desc 'yarn install --ignore engines'
  task ignore_engines: :environment do
    exec yarn install --ignore-engines
  end
end
