require 'rails_helper'

RSpec.describe BriefBag, type: :model do

  it { should belong_to(:user) }

  it { is_expected.to have_many(:wallets) }

  it "is valid with valid attributes" do
    user = User.create(email: 'test@example.com', password: '123qwe')
    expect(BriefBag.new(user_id: user.id)).to be_valid
  end

  it "is not valid without a user" do
    expect(BriefBag.new).to be_invalid  
  end
end