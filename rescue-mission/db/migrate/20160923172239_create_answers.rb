class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :commenter, null: false
      t.string :body, null: false
      t.belongs_to :question, null: false

      t.timestamps null: false

    end
  end
end
