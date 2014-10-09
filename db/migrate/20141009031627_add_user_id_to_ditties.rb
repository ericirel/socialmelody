class AddUserIdToDitties < ActiveRecord::Migration
  def change
    add_column :ditties, :user_id, :integer
  end
end
