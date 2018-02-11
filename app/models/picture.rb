class Picture < ApplicationRecord
  acts_as_votable
  belongs_to :user


def self.search(term)
  if term
    where('title LIKE ?', "%#{term}%").order('id DESC')
  else
    order('id DESC')
  end
end


end
