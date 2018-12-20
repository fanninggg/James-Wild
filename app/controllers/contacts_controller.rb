class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @contacts = Contact.all
  end

  def new
  end

  def create
  end
end
