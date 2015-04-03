class CreateMeallists < ActiveRecord::Migration
  def change
    create_table :meallists do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
