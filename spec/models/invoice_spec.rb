require 'rails_helper'

describe Invoice do
  it 'should have has_many association with line_items' do
    assc = described_class.reflect_on_association(:line_items)
    expect(assc.macro).to eq :has_many
  end

   it 'should have belongs_to association with user' do
    assc = described_class.reflect_on_association(:user)
    expect(assc.macro).to eq :belongs_to
  end
end