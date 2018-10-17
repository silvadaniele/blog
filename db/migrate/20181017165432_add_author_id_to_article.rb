class AddAuthorIdToArticle < ActiveRecord::Migration[5.1]
  def change
     remove_column :articles, :author, :string
     add_reference :articles, :author, foreign_key: true
  end
end
