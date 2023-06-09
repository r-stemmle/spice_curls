class CreateJoinTableUserSpice < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :spices do |t|
      t.index [:user_id, :spice_id]
      t.index [:spice_id, :user_id]
    end
  end
end
