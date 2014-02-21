class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name

      t.timestamps
    end


  
  add_column :articles, :author_id, :integer
  add_index :articles, :author_id
  end
end
