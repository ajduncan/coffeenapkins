class CreateNapkins < ActiveRecord::Migration
  def change
    create_table :napkins do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
