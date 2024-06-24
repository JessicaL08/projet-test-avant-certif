class CreateAppartements < ActiveRecord::Migration[7.1]
  def change
    create_table :appartements do |t|
      t.string :adresse
      t.string :ville

      t.timestamps
    end
  end
end
