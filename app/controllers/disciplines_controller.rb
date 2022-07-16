class DisciplinesController < ApplicationController
  def index
    @disciplines = Discipline.all
    render json: @disciplines
  end

  def show
    render json: @discipline
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
    @discipline.destroy
  end


  private

  def set_discipline
    @discipline = Discipline.find(params[:id])
  end

  def discipline_params
    params.require(:discipline).permit(user_ids: [])
  end

end
