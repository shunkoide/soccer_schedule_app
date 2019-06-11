class Court < ApplicationRecord
    belongs_to :user

    validates :store_name, presence: true

    validates :store_email, length: { maximum: 255 }

    VALID_TEL_REGEX = /\A(((0(\d{1}[-(]?\d{4}|\d{2}[-(]?\d{3}|\d{3}[-(]?\d{2}|\d{4}[-(]?\d{1}|[5789]0[-(]?
                      \d{4})[-)]?)|\d{1,4}\-?)\d{4}|0120[-(]?\d{3}[-)]?\d{3})\z/
    validates :tel, format: { with: VALID_TEL_REGEX }
    # 携帯ハイフンありにも対応したほうがいい？
end
