class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true


  POST_CODE_VALID = /\A\d{3}-\d{4}\z/i
  
  # バリデーション
  validates :post_code,               presence: true, format: { with: POST_CODE_VALID }
  validates :prefecture_id,           presence: true
  validates :city,                    presence: true, length: {maximum: 50}
  validates :address,                 presence: true, length: {maximum: 50}
end
