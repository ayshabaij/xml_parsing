class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.text :desciption
      t.boolean :favorite

      t.timestamps
    end
  end
end
