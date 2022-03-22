class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :name

      t.timestamps
    end
  end
end
