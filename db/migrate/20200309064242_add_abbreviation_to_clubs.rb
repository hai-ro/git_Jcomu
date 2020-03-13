class AddAbbreviationToClubs < ActiveRecord::Migration[5.2]
  def change
    add_column :clubs, :abbreviation, :string
  end
end
