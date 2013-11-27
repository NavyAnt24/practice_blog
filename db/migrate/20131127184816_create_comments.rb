class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :body, :null => false
    	t.integer :post_id

      t.timestamps
    end
  end
end
