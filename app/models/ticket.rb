class Ticket < ApplicationRecord

  has_many :orders

  with_options presence: true do
  validates :program
  validates :venue
  validates :date,numericality: {　with: /\A\d{4}-\d{2}-\d{2}\z/, message:"は2021-10-29の様にハイフンを入れて記入して下さい"}
  validates :time
  validates :price,
  numericality: { with: /\A[0-9]+\z/, less_than: 10_000_000,
                  message: 'は9,999,999円までの範囲で入力してください,また半角数字のみ入力できます' }

  end
  validates :remaining, numericality: {with: /\A[0-9]{4}\z/, message: 'は半角数字、４桁以内で入力して下さい。それ以上販売するぐらいになったなら、プロに頼んで下さい。'}
end
