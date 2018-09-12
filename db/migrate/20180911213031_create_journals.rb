class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true, null: false

      t.timestamps
    end
  end
end
