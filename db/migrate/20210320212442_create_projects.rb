class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.numeric :author_id
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
