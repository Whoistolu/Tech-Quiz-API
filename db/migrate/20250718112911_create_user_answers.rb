class CreateUserAnswers < ActiveRecord::Migration[8.0]
  def change
    create_table :user_answers do |t|
      t.references :submission, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
