class TrainSimulatorController < ApplicationController
  def index
    @trains = Train.all
  end

  def status_by_time
    @trains = Train.all
  end

end
