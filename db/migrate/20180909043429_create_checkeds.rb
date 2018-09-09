class CreateCheckeds < ActiveRecord::Migration[5.2]
  def change
    create_table :checkeds do |t|
      t.references :user, foreign_key: true
      t.references :todo, foreign_key: true
      t.boolean :check

      t.timestamps
    end
  end
end
