class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.text :description, null: false
      t.references :loggable, polymorphic: true

      t.timestamps
    end
  end
end
