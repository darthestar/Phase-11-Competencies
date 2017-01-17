class AnswersController < ApplicationController

  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers.order(created_at: :desc)

  end

  def new
   @question = Question.find(params[:question_id])
   @answer = Answer.new
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question
    @answers = @question.answers.order(created_at: :asc)
    @favorite_answer = @answers.where(best_answer: true).first

    if @answer.save
      redirect_to question_path(@question)
    else
      render 'questions/show'
    end
  end

  def update
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @all_answers = @question.answers
    @all_answers.update_all(best_answer: false)
    @answer.update_attributes(best_answer: true)

    redirect_to question_path(@answer.question)
  end
end

  private
    def answer_params
      params.require(:answer).permit(:body, :question_id)
    end
