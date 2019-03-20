class TeamsController < ApplicationController

  before_action :set_team, only: [:show, :edit, :update]

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    redirect_to @team
  end

  # def show
  #   byebug
  # end

  def update
    set_team
    @team.update(team_params)

    if @team.save
      redirect_to @team
    else
      render :edit
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :season)
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
