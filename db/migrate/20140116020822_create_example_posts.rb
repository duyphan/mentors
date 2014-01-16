class CreateExamplePosts < ActiveRecord::Migration
  def change
    create_table :example_posts do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
