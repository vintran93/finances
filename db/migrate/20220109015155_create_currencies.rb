class CreateCurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :currencies do |t|

      t.timestamps
    end
  end
end
