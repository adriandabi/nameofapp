require 'rails_helper'

describe UserController, type: :controller do
  let(:user) {User.create!(email: 'pete@example.com', password: '1234567890')}

  describe 'GET #show'do
    contex 'when a user is logged in' do
     before   do
       sign_in user
     end
    it 'loads correct user details' do
     get :show params: { id: user.id }
    end
    contex 'when a user is not loged in' do
      it 'redirects to login' do
        get :show, params: {id: user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
