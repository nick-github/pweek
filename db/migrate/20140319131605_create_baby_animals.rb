class CreateBabyAnimals < ActiveRecord::Migration
  def change
    create_table :baby_animals do |t|
      t.string :title
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
