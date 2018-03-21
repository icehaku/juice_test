class AddDefaultValueToSubmittedAttribute < ActiveRecord::Migration[5.0]
  def change
    change_column :searches, :submitted, :boolean, default: false
  end
end
