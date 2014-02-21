class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :heading
      t.text :story
      t.datetime :publish_date
      t.string :author

      t.timestamps
    end
  end
end
