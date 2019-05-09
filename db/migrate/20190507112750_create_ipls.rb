class CreateIpls < ActiveRecord::Migration[5.2]
  def change
    create_table :ipls do |t|
      t.string :founder
      t.integer :founded

      t.timestamps
    end
  end
end
