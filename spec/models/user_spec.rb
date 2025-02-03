require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.new(email: 'test@mail.ru', password: '123pas') }

  it { is_expected.to have_one(:brief_bag) }

  it 'create brief_bag on create' do
    subject.save
    expect(subject.brief_bag).to be_present
  end
end
