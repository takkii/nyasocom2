class AddFullTextSearchIndexToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_index :books,:title, type: :fulltext
  end
end
