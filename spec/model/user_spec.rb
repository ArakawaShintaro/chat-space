require 'rails_helper'

describe User do
  describe 'validation' do
    it 'is invalid without a name' do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end
  end
end
