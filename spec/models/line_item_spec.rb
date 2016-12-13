require 'rails_helper'

describe LineItem do
  it 'Associations' do
    assc = described_class.reflect_on_association(:invoice)
    expect(assc.macro).to eq :belongs_to
  end
end