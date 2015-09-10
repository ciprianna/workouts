class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  # Exercise homepage - evaluate if needed
  def index
  end

  # Display form to create a new exercise
  def create
    @exercise = Exercise.new(exercise_params)

    if @exercise.save
      redirect_to '/exercises'
    else
      render :new
    end
  end

  # Create the new exercise
  def new
    @exercise = Exercise.new
  end

  # Display a form to edit an exercise
  def edit
  end

  # Show information about an exercise
  def show
  end

  # Update an exercise (save)
  def update
  end

  # Delete an exercise
  def delete
  end

  private
  # Strong params
  def exercise_params
    params.require(:exercise).permit(:name, :equipment, :muscle_group_id)
  end

  # Find an exercise
  def set_exercise
    @exercise = Exercise.find(params[:id])
  end

end
