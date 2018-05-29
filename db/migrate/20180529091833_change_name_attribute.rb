class ChangeNameAttribute < ActiveRecord::Migration[5.1]
  def change
    rename_column :mushrooms, :bruises?, :bruises
  end
end
