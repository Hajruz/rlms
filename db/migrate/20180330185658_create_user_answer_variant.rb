class CreateUserAnswerVariant < ActiveRecord::Migration[5.1]
  def change
    create_table :user_answer_variants do |t|
      t.integer :learner_id, null: false
      t.integer :question_id, null: false
      t.integer :answer_variant_id, null: false
      t.integer :topic_id, null: false

      t.timestamps
    end
  end
end
