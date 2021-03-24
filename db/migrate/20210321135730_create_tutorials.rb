class CreateTutorials < ActiveRecord::Migration[6.1]
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :overview
      t.string :stats
      t.string :body
      t.string :author

      t.timestamps
    end
  end
end
