class ContactsController < ApplicationController

    def create
        contact = Contact.create({name: params[:name], email: params[:email], phone: params[:phone], details: params[:details], user: current_user})
    end

   

end