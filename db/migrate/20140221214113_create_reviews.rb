class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.float :rating, default: 0.0
      t.integer :article_id
      t.timestamps
    end
    
    add_index :reviews, :article_id

  end



end
