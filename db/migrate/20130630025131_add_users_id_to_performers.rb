class AddUsersIdToPerformers < ActiveRecord::Migration
  def change
    change_table :performers do |t|
      t.integer :user_id
    end
  end
end
