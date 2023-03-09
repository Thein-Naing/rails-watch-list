class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :comment, null: false
      t.references :movie, foreign_key: true, index: true
      t.references :list, foreign_key: true, index: true
      t.timestamps
    end

    add_index :bookmarks, %i[list_id movie_id], unique: true
  end
end
