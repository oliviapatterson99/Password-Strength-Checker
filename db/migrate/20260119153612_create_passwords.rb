class CreatePasswords < ActiveRecord::Migration[8.1]
  def change
    create_table :passwords do |t|
      t.string :characters
      t.boolean :strong

      t.timestamps
    end
  end
end
