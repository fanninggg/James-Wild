class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.sent = false
    @contact.save
    redirect_to new_contact_path
  end

  private

  def contact_params
    params.require(:contact).permit(:email)
  end
end
