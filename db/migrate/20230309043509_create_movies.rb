class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :overview, null: false, index: { unique: true }
      t.string :poster_url
      t.float :rating
      t.timestamps
    end
  end
end
