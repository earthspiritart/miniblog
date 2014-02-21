class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.datetime :publish_date

      t.timestamps
    end
  end
end
