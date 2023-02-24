class CreateSmokers < ActiveRecord::Migration[7.0]
  def change
    create_table :smokers do |t|
      t.string :name
      t.string :cranky_level

      t.timestamps
    end
  end
end
