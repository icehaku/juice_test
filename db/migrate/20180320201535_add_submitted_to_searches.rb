class AddSubmittedToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :submitted, :boolean
  end
end
