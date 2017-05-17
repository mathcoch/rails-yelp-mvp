class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant, presence: true
  validates :content, presence: true
  validates_numericality_of :rating
  validates :rating, presence: true, inclusion: {in: (0..5).to_a}

  def self.search(search)
    if search
      where('content LIKE ?', "%#{search}%").all
    else
      all
    end
  end
end
