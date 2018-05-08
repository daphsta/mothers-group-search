require 'spec_helper'

describe CreateUser do
  let(:interactor) { CreateUser.new(attributes) }
  let(:attributes) { Hash[email: 'me@mypage.com', name: 'Moo', password: '123'] }

  context 'with valid input' do
    let(:result) { interactor.call}

    it 'succeeds' do
      expect(result).to be_a_success
    end

    it 'creates a user' do
      expect(result.user.name).to eq('Moo')
    end
  end
end
