require 'rails_helper'

RSpec.describe Redirection, type: :model do
  context 'before redirection' do
    it 'cannot have visits' do
      expect { Redirection.create.visits.create! }.to raise_error(ActiveRecord::RecordNotSaved)
    end
  end

  context 'validation' do
    it 'is valid with valid attributes' do
      expect(Redirection.create(url_address: 'www.example.com', mask_url: 'custom')).to be_valid
    end

    it 'is not valid without url' do
      expect(Redirection.create(mask_url: 'custom')).to_not be_valid
    end

    it 'is not valid with short mask_url' do
      expect(Redirection.create(url_address: 'www.example.com', mask_url: 'ab')).to_not be_valid
    end
  end
end
