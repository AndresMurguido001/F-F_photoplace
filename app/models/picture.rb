class Picture < ApplicationRecord
  acts_as_votable
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :attachment, styles: {thumb: "300x300>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/


def self.search(term)
  if term
    where('title LIKE ?', "%#{term}%").order('id DESC')
  else
    order('id DESC')
  end
end





end
