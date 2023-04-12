class AddUserReferenceToSpices < ActiveRecord::Migration[7.0]
  def change
    add_reference :spices, :user
  end
end
