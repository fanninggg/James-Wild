class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact]

  def home
    @homepage = Homepage.first
    @projects = Project.where(featured: true).last(9).reverse
  end

  def about
  end

  def contact
  end
end
