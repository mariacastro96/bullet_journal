class CreateMonthlyTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :monthly_types do |t|
      t.string :name, null: false
      t.references :monthly_log, foreign_key: true, null: false

      t.timestamps
    end
  end
end
