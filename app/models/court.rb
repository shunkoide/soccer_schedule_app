class Court < ApplicationRecord
    belongs_to :user

    validates :store_name, presence: true
    VALID_STORE_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :store_email, length: { maximum: 255 }, format:      y{ with: VALID_STORE_EMAIL_REGEX }
end
