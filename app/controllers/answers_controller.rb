class AnswersController < ApplicationController


  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      redirect_to question_path(@answer.question)
    else
      render :new
  end

  def show
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def edit
    @question = Question.find(params[:question_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @question = Question.find(params[:question_id])
    if @answer.update(@question, answer_params)
      redirect_to question_path
    end
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to questions_path
  end

  private
  def answer_params
    params.require(:answer).permit(:response, :user)
  end


end
