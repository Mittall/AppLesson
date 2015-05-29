class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :lesson_id
      t.string :title
      t.attachment :image

      t.timestamps
    end
  end
end
