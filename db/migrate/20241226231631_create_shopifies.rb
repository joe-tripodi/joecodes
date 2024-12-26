class CreateShopifies < ActiveRecord::Migration[8.0]
  def change
    create_table :shopifies do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.date :date

      t.timestamps
    end
  end
end
