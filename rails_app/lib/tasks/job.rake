namespace :job do
  desc "Roda job para busca mensagens no tweet das hashtag cadastradas"
  task schedule: :environment do
    spinner = TTY::Spinner.new("[:spinner] Executando job")
    spinner.auto_spin
    SearchTweetsJob.perform_now
    spinner.success("Concluído o Job")
  end

end
