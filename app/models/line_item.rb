class LineItem < ActiveRecord::Base
  belongs_to :invoice

  # validations
  validates :description, :amount, presence: true
  validates :amount, :numericality => true, :allow_nil => true
end
