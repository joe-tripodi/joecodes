class CreateProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.string :url
      t.string :repo
      t.date :completion_date

      t.timestamps
    end
  end
end
