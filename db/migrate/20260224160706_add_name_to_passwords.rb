class AddNameToPasswords < ActiveRecord::Migration[8.1]
  def change
    add_column :passwords, :name, :string
  end
end
