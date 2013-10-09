class ContactsController < ApplicationController

  def index
    @contacts = ContactsController::contacts_for_user_id(params[:user_id])
    render :json => @contacts
  end

  def new
    @contact = Contact.new(params[:contact])
    render :json => @contact
  end

  def edit
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end

  def show
    @contact = Contact.find(params[:id])
    render :json => @contact
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      render :json => @contact
    else
      render :json => @contact.errors, :status => :unprocessable_entity
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    if @contact.destroy
      head :ok
    else
      render :json => false
    end
  end

  def self.contacts_for_user_id(user_id)
    Contact.find_by_sql([<<-SQL, user_id, user_id])
    SELECT contacts.*
    FROM contacts LEFT OUTER JOIN contact_shares
    ON contacts.id = contact_shares.contact_id
    WHERE contacts.user_id = ? OR contact_shares.receiving_user_id = ?
    SQL
  end

end
