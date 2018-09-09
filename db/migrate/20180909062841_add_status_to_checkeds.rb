class AddStatusToCheckeds < ActiveRecord::Migration[5.2]
  def change_column_check
      t.boolean :check, default: false
  end
end
