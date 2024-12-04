class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.text :status
      t.date :published_date
      t.string :author
      t.float :home_loan
      t.float :savings
      t.float :investments
      t.float :income
      t.float :crypto

      t.timestamps
    end
  end
end
