class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :name, null: false, default: 'simple log'
      t.string :symbol, null: false, default: '.'

      t.timestamps
    end
  end
end
