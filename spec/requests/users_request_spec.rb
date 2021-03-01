require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) { create(:user) }

  before do
    sign_in user
  end

  describe 'POST /user' do
    let(:valid_attributes) { { first_name: 'Tim', last_name: 'Doe',
                               email: 'tim.doe@example.com', employee_number: '332980',
                               password: 'password', password_confirmation: 'password' } }

    context 'when request is valid' do
      before { post '/users', params: valid_attributes }

      it 'creates a user' do
        expect(User.count).to eq(1)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
  end
end
