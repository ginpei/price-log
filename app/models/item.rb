class Item < ActiveRecord::Base
  belongs_to :user
  has_many :experiences

  def ave_price
    return 'N/A' if experiences.size < 1

    experiences = self.experiences.all
    experiences.inject(0){|sum, e| sum+e.price } / experiences.size
  end
end
