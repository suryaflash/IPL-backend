class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.date :dob
      t.string :role
      t.string :nationality
      t.string :team
      t.string :batting_style
      t.string :bowling_style

      t.timestamps
    end
  end
end
