class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
    @photo = @project.photos.build
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user
    if @project.save && @project.photos.first != nil
      params[:photos]['url'].each do |uri|
        @photo = @project.photos.create!(url: uri)
      end
      redirect_to project_path(@project)
    elsif @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @project.update(project_params)
    @photo = @project.photos.build
    if @project.save!
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, photos_attributes: [:url, :id, :project_id])
  end
end
