class RenameUsersColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :cypto_user, :crypto_user
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
