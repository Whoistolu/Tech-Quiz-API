class CreateQuestions < ActiveRecord::Migration[8.0]
  def change
    create_table :questions do |t|
      t.references :quiz, null: false, foreign_key: true
      t.string :content
      t.string :question_type

      t.timestamps
    end
  end
end
