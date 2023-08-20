class ContactsController < ApplicationController

  ##
  # Show contacts list
  def index
    @contact = Contact.all
  end

  ##
  # Show new contact form
  def new
    @contact = Contact.new
  end

  ##
  # Crate new contact
  def create
    @contact = Contact.new(contact_params)
    @contact.save
  end

  ##
  # Show an contact form
  def edit
    @contact = Contact.find_by!(id: params[:id])
  end

  ##
  # Update an contact
  def update
    @contact = Contact.find_by!(id: params[:id])
    @contact.update(contact_params)
    return redirect_to(contacts_path)
  end

  
  def contact_params
    params.require(:contact).permit(:test)
  end

end
