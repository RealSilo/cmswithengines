require 'rails_helper'

module Samurai
  describe DashboardController do
    set_engine_routes
    
    context 'signed out' do
      describe 'GET Index' do
        it 'does not have a current_user' do
          expect(subject.current_user).to be_nil
        end

        it 'redirects the user to login page' do
          get :index
          expect(subject).to redirect_to new_user_session_path
        end        
      end
    end
   
    context 'user' do
      login_user
      
      describe 'GET Index' do
        
        it 'has a current_user' do
          expect(subject.current_user).to_not be_nil
        end

        before do
          get :index
        end

        it { is_expected.to respond_with 200 }
        # it { is_expected.to render_template :index }
      end
    end
   
    context 'admin' do
      login_admin
     
      it 'has a current_user' do
        expect(subject.current_user).to_not be_nil
      end
     
      it 'has a current_user who is an admin' do
        expect(subject.current_user.admin).to be true
      end

      before do 
        get :index
      end

      it { is_expected.to respond_with 200 }
      # it { is_expected.to render_template :index }
    end
  end
end
