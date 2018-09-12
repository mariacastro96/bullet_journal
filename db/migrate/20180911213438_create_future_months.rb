class CreateFutureMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :future_months do |t|
      t.string :name, null: false
      t.references :future_log, foreign_key: true, null: false

      t.timestamps
    end
  end
end
