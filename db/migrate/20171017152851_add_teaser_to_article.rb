class AddTeaserToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :teaser, :text
  end
end
