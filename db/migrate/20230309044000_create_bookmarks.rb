class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, foreign_key: true
      t.references :list, foreign_key: true
      t.timestamps
    end
    add_index(:bookmarks, [:list_id, :movie_id])
  end
end
