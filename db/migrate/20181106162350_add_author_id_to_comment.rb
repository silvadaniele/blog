class AddAuthorIdToComment < ActiveRecord::Migration[5.1]
  def change
  	 remove_column :comments, :author, :string
     add_reference :comments, :author, foreign_key: true
  end
end
