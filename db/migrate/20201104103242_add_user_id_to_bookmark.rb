class AddUserIdToBookmark < ActiveRecord::Migration[6.0]
  def change
    add_column :bookmarks, :user_id, :string
  end
end
