class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :contact]

  def home
    @projects = Project.where(featured: true).last(3).reverse
  end

  def about
  end

  def contact
  end
end
