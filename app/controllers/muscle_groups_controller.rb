class MuscleGroupsController < ApplicationController
  before_action :set_muscle_group, only: [:show, :edit, :update, :destroy]

  # Index homepage - evaluate if needed
  def index
  end

  # Display form to create a new index
  def create
    @muscle_group = MuscleGroup.new(muscle_group_params)

    if @muscle_group.save
      redirect_to '/muscle_groups'
    else
      render :new
    end
  end

  # Create the new muscle group
  def new
    @muscle_group = MuscleGroup.new
  end

  # Display a form to edit a muscle group
  def edit
  end

  # Show information about a muscle group
  def show
  end

  # Update a muscle group (save)
  def update
    if @muscle_group.update(muscle_group_params)
      redirect_to '/muscle_groups'
    else
      render :edit
    end
  end

  # Delete a muscle group
  def delete
  end

  private
  # Strong params
  def muscle_group_params
    params.require(:muscle_group).permit(:name)
  end

  # Find a muscle group
  def set_muscle_group
    @muscle_group = MuscleGroup.find(params[:id])
  end


end
