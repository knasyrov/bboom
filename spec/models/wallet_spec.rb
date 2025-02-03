require 'rails_helper'

RSpec.describe Wallet, type: :model do
  subject { described_class.new(eid: 'eid', name: 'name', symbol: 'symbol') }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a eid" do
    subject.eid = nil
    expect(subject).to be_invalid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to be_invalid
  end

  it "is not valid without a symbol" do
    subject.symbol = nil
    expect(subject).to be_invalid
  end
end
