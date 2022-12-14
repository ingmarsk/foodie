# frozen_string_literal: true

RSpec.describe Foodie::Food do
  it 'broccoli is gross' do
    expect(Foodie::Food.portray('Broccoli')).to eq('Gross!')
  end

  it 'pluralizes a word' do
   expect(Foodie::Food.pluralize('Tomato')).to eq('Tomatoes')
  end
end