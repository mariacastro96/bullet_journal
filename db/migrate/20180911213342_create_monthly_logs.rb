class CreateMonthlyLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :monthly_logs do |t|
      t.string :month
      t.references :journal, foreign_key: true, null: false

      t.timestamps
    end
  end
end
