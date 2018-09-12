class CreateDailyLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_logs do |t|
      t.references :journal, foreign_key: true, null: false

      t.timestamps
    end
  end
end
