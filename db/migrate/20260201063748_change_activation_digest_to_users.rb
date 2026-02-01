class ChangeActivationDigestToUsers < ActiveRecord::Migration[8.1]
  def change
    change_column :users, :activation_digest, :text
    change_column :users, :remember_digest, :text
  end
end
