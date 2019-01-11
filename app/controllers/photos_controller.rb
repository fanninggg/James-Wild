class PhotosController < ApplicationController
  def destroy
    @photo = Photo.find(params[:id])
    @project = Project.find(params[:project])
    @photo.destroy
    redirect_to project_path(@project)
  end
end
