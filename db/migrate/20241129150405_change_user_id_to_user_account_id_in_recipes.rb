class ChangeUserIdToUserAccountIdInRecipes < ActiveRecord::Migration[7.0]
  def change
    rename_column :recipes, :user_id, :user_account_id  # Đổi tên cột
  end
end
