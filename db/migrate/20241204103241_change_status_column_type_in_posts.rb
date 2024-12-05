class ChangeStatusColumnTypeInPosts < ActiveRecord::Migration[8.0]
  def change
    change_column :posts, :status, :string
  end
end
