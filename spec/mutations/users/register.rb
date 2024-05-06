require 'rails_helper'

RSpec.describe RegisterUser do
  describe "#validate" do 
    context "with valid data" do 
      let(:mutation) {described_class.new(
        email: "test@test.ru",
        password: "123123123",
        password_confirmation: "123123123"
      )}

      it 'is_valid' do 
        expect(mutation.valid?).to be true  
      end
    end
  end
end
