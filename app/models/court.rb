class Court < ApplicationRecord
    belongs_to :user

    validates :store_name, presence: true

    VALID_TEL_REGEX = /0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}/
    validates :tel, format: { with: VALID_TEL_REGEX }, allow_blank: true

    VALID_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :store_email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX },
                                allow_blank: true
                      
    validates :url, format: { with: /\A^https?:\/\// }, allow_blank: true            
end
