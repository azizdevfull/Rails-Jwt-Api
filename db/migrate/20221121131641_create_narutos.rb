class CreateNarutos < ActiveRecord::Migration[7.0]
  def change
    create_table :narutos do |t|
      t.string :character
      t.string :village
      t.string :eye

      t.timestamps
    end
  end
end
