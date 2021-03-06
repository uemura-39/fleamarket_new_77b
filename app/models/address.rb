class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to :user, optional: true
  validates :postal_code, format: { with:/\A[0-9]+\z/ }
  validates :city,:other,:postal_code,:prefecture_id,:first_name,:first_name_furigana,:last_name,:last_name_furigana,  presence: true
  validates :first_name, :last_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name_furigana, :last_name_furigana, format: { with: /\A[ァ-ヶー－]+\z/ }
end
