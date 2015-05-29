class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.boolean :correct_answer
      t.text :content
      t.attachment :ans_image

      t.timestamps
    end
  end
end
