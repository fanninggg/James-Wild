class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact]

  def home
    @projects = Project.last(3)
  end

  def about
  end

  def contact
  end
end
