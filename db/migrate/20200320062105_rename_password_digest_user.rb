class RenamePasswordDigestUser < ActiveRecord::Migration
  def change
    # remove_column :users, :password
    rename_column :users, :password_digest, :encrypted_password
    add_column :users, :password_digest, :string
  end
end
