require_dependency "samurai/application_controller"

module Samurai
  module Contacts
    class ContactsController < Samurai::Contacts::ApplicationController
      before_action :set_and_authorize_contact, only: [:show, :edit, :update, :destroy]

      def index
        @contacts = current_user.contacts
      end

      def show
      end

      def new
        @contact = Contact.new
      end

      def edit
      end

      def create
        @contact = Contact.new(contact_params)
        @contact.user = current_user
        if @contact.save
          redirect_to @contact, notice: 'Contact was successfully created.'
        else
          render :new
        end
      end

      def update
        if @contact.update(contact_params)
          redirect_to @contact, notice: 'Contact was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @contact.destroy
        redirect_to contacts_url, notice: 'Contact was successfully destroyed.'
      end

      private
        def set_and_authorize_contact
          @contact = Contact.find(params[:id])
          authorize @contact
        end

        def contact_params
          params.fetch(:contact, {}).permit(:first_name, :last_name, :company, :email, :phone, :user_id)
        end
    end
  end
end
