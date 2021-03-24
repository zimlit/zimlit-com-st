class CubingController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    @tutorials = Tutorial.all
  end
end
