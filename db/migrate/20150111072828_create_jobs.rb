class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
    	t.text :title
    	t.text :description
    	t.integer :category_id
      t.timestamps
    end
  end
end
