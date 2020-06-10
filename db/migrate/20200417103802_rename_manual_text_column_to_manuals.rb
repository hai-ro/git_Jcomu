class RenameManualTextColumnToManuals < ActiveRecord::Migration[5.2]
  def change
    rename_column :manuals, :manual_text, :text
  end
end
