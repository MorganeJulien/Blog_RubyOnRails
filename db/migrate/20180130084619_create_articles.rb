class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string "title"
      t.datetime "date"
      t.text "chapeau"
      t.text "texte"
      t.string "vignette"
      t.references :user, foreign_key: true
      t.timestamps null: false
    end
  end
end
