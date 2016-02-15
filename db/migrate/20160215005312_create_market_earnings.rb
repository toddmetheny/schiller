class CreateMarketEarnings < ActiveRecord::Migration
  def change
    create_table :market_earnings do |t|
      t.float :date
      t.float :consumer_price_index
      t.float :dividend
      t.float :date_fraction
      t.float :long_interest_rate
      t.float :real_price
      t.float :real_dividend
      t.float :real_earnings
      t.float :cape

      t.timestamps null: false
    end
  end
end
