class RemoveCheckFromCheckeds < ActiveRecord::Migration[5.2]
  def change
    change_column_default :checkeds, :check, from: true, to: false
  end
end
