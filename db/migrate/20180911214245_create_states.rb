class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name, null: false, default: 'finished'
      t.string :symbol, null: false, default: 'x'

      t.timestamps
    end
  end
end
