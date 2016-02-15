require 'csv'

task :seed_sp_data => :environment do
  # file = File.open('/ie_data.csv')
  # MarketEarning.schiller_pe(file)
  file = "db/ie_data.csv"

  CSV.foreach(file, :headers => true) do |row|
    p "row: #{row}"
  end
end

