class CodingController < ApplicationController
  skip_before_action :authorized, only: [:index]
  def index
    @projects = Project.all
  end
end
