class Author < ActiveRecord::Base
  has_many :articles

  def full_name
    " #{last_name}, #{first_name} "
  end
end
