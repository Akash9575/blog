class AddNumberToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :number, :integer
  end
end
