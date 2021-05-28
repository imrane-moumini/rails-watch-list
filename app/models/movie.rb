class Movie < ApplicationRecord
  #has_many :lists, through: :bookmarks
  has_many :bookmarks
  #before_destroy :check_for_bookmarks, prepend: true

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

#def check_for_bookmarks
    #if bookmarks.count > 0
      #errors.add_to_base("cannot delete customer while orders exist")
      #throw :abort
      #return false
    #end
  #end
end
