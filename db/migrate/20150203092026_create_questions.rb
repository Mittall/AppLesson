class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :lesson_id
      t.string :name
      t.text :content
      t.attachment :que_image

      t.timestamps
    end
  end
end
