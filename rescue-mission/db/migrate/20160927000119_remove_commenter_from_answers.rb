class RemoveCommenterFromAnswers < ActiveRecord::Migration
  def change
    remove_column :answers, :commenter, :string
  end
end
