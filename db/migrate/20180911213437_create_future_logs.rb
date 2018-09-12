class CreateFutureLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :future_logs do |t|
      t.integer :number_of_months, null: false, default: 6
      t.references :journal, foreign_key: true, null: false

      t.timestamps
    end
  end
end
