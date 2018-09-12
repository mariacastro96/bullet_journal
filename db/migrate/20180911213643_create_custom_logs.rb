class CreateCustomLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :custom_logs do |t|
      t.string :name, null: false
      t.references :journal, foreign_key: true, null: false

      t.timestamps
    end
  end
end
