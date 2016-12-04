require 'rails_helper'

describe User do
  describe 'validation' do
    it 'is invalid without a name' do
      user = build(:user, name: "")
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end
  end
end
