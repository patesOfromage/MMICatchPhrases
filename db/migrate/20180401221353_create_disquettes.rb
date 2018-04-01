class CreateDisquettes < ActiveRecord::Migration[5.1]
  def change
    create_table :disquettes do |t|
      t.string :user_name
      t.string :disquette

      t.timestamps
    end
  end
end
