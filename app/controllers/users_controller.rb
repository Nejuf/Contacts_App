class UsersController < ApplicationController

  def favorites
    favorite_contacts = ContactsController.favorite_contacts_for_user_id(params[:id])
    render :json => favorite_contacts
  end
end
