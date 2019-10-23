class UpdatesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_update, only: [:show, :edit, :update, :destroy]

  def show
    @bg = random_etch
  end

  def index
    @updates = Update.last(10).reverse
    @bg = random_etch
  end

  def new
    @update = Update.new
  end

  def destroy
    if !current_user
      redirect_to :root
    else
      @update.destroy
      redirect_to updates_path
    end
  end

  def create
    if !current_user
      redirect_to :root
    else
      @update = Update.new(update_params)
      @update.title = @update.title.titleize
      if @update.save
        redirect_to updates_path
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    @update.update(update_params)
    if @update.save!
      redirect_to updates_path
    else
      render :edit
    end
  end

  private

  def random_etch
    etchs = ["e.png","w.png","ws.jpg","l.jpg"]
    etchs.sample
  end

  def find_update
    @update = Update.find(params[:id])
  end

  def update_params
    params.require(:update).permit(:title, :url, :link, :description, :photo)
  end

end
