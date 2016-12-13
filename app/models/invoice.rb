class Invoice < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  belongs_to :user

  # validations
  validates :description, presence: true
 	validates :amount, :numericality => true, :allow_nil => true
 	
  # Get total on line_items
  def get_line_items_total
  	line_items.map(&:amount).sum 
  end
end
