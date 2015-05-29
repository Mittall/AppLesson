class CreateLessonImageInfos < ActiveRecord::Migration
  def change
    create_table :lesson_image_infos do |t|
      t.integer :lesson_id
      t.string :title
      t.attachment :lesson_image

      t.timestamps
    end
  end
end
