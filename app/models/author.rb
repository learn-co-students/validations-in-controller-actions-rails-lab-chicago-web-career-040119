class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }

end
