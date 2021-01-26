class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :accs, :provider, :string
    add_column :accs, :uid, :string
  end
end
