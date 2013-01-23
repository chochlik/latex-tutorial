class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.text   :description
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
