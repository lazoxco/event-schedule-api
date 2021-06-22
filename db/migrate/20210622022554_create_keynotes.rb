class CreateKeynotes < ActiveRecord::Migration[6.0]
  def change
    create_table :keynotes do |t|
      t.string :title
      t.string :speaker
      t.text :description
      t.string :date_time

      t.timestamps
    end
  end
end
