class CreateDitties < ActiveRecord::Migration
  def change
    create_table :ditties do |t|
      t.text :body
      t.string :player

      t.timestamps
    end
  end
end
