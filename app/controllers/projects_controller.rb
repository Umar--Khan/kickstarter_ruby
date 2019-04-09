class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def create
    @project = Project.new(project_params)
    @project.save

    redirect_to project_path(@project)
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    @project.save

    redirect_to project_path(@project)
end

  def new
    @project = Project.new
  end

  def destroy
    Project.find(params[:id]).destroy
    redirect_to projects_path
end

  private

  def project_params
    params.require(:project).permit(:name, :bio, :amount_needed, :amount_raised)
  end
end
