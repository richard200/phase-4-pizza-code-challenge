class CreatePitzzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pitzzas do |t|
      t.string :name
      t.string :ingredients

      t.timestamps
    end
  end
end
