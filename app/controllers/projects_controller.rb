class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(title: params[:project][:title], url: params[:project][:url], author_id: current_user.id)
    redirect_to '/coding'
  end
  
  def destroy
    Project.find_by(id: params[:id]).destroy
    redirect_to '/coding'
  end
end
