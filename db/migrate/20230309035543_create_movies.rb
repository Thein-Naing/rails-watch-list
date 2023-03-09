class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false, index: { unique: true }
      t.string :overview, null: false
      t.text :poster_url, null: false
      t.integer :rating, null: false

      t.timestamps
    end
  end
end
