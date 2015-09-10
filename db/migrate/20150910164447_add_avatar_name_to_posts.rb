class AddAvatarNameToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :avatar_name, :string
  end
end
