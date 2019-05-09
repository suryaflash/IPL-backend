class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :dob
      t.string :nationality
      t.string :team

      t.timestamps
    end
  end
end
