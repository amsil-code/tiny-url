class Redirection < ApplicationRecord
  has_many :visits

  validates :url_address, presence: true
  validates :mask_url, presence: true, uniqueness: true, length: { minimum: 5, maximum: 8 }

  before_validation :set_mask_url

  private

  def set_mask_url
    self.mask_url = SecureRandom.alphanumeric(8) if mask_url.blank?
  end
end
