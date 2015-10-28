class CreateWellspringImages < ActiveRecord::Migration
  def change
    create_table :wellspring_images do |t|
    	t.string :file

    	t.timestamps null: false
    end
  end
end
