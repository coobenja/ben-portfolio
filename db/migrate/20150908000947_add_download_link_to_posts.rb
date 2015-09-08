class AddDownloadLinkToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :download_link, :string
  end
end
