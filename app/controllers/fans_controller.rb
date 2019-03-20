class FansController < ApplicationController

    before_action :set_fan, only: [:show, :edit, :update]

    def index
      @fans = Fan.all
    end

    def new
      @fan = Fan.new
    end

    def create
      @fan = Fan.create(fan_params)
      redirect_to @fan
    end

    def update
      set_fan
      @fan.update(fan_params)

      if @fan.save
        redirect_to @fan
      else
        render :edit
      end
    end

    private

    def fan_params
      params.require(:fan).permit(:name, :team_id)
    end

    def set_fan
      @fan = Fan.find(params[:id])
    end
end
