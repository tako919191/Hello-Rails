class AddKindToTakos < ActiveRecord::Migration[7.0]
  def change
    add_column :takos, :kind, :string
  end
end
