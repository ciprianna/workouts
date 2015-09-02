class ExercisesController < ApplicationController

  # Exercise homepage - evaluate if needed
  def index
  end

  # Display form to create a new exercise
  def create
    @exercise = Exercise.new(exercise_params)

    redirect_to '/exercises'
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
    params.require(:exercise).permit(:name, :equipment)
  end

  # Find an exercise
  def set_assignment
    @exercise = Exercise.find(params[:id])
  end

end
