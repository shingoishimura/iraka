class Order < ApplicationRecord
  belongs_to :ticket

  with_options presence: true do
    validates :name
    validates :name_kana, format: { with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/, message: 'は全角カタカナで入力して下さい' }
    validates :ticket_id
    validates :tel_num, format: { with: /\A(0{1}\d{0,10})\z/, message: 'は11桁以下半角数字で-（ハイフン）は不要です' }
  end
end
