class MarketEarning < ActiveRecord::Base
  # file_to_pass = "ie_data.csv"

  validates :date, uniqueness: true
  validates :cape, presence: true

  def self.schiller_pe(file)
    sp500_data = CSV.read(file)
    all_pe = []
    sp500_data.each do |row|
      unless row.nil?
        unless row[0].nil? || row[10].nil?
          p "date: #{row[0]}, PE10: #{row[10]}"
          all_pe << row[10].to_f
        end
      end
    end
    p "total values: #{all_pe.length}"
    median(all_pe)
    mean_pe(all_pe)
    min_pe(all_pe)
    max_pe(all_pe)
    current_pe(all_pe)
  end

  def median(array)
    sorted = array.sort
    len = sorted.length
    p "median: #{(sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0}"
    (sorted[(len - 1) / 2] + sorted[len / 2]) / 2.0
  end

  def mean_pe(array)
    len = array.length
    mean = array.inject(:+) / len
    p "mean: #{mean}"
    mean
  end

  def min_pe(array)
    p "min pe: #{array.min}"
  end

  def max_pe(array)
    p "max pe: #{array.max}"
  end

  def current_pe(array)
    p "current pe: #{array.last}"
  end
end
