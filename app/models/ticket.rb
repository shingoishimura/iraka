class Ticket < ApplicationRecord
  has_many :orders
  has_one_attached :image

  with_options presence: true do
    validates :program
    #  validates :venue
    #  validates :date #, numericality: { with: /\A\d{4}-\d{2}-\d{2}\z/, message: 'は2021-10-29の様にハイフンを入れて記入して下さい' }
    #  validates :time
    #  validates :price
    #  validates :remaining
  end
end
