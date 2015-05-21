class User < ActiveRecord::Base
  has_many :items

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth[:provider]
      user.uid = auth[:uid]
      user.name = auth[:info][:name]
    end
  end

  def update_with_omniauth(auth)
    update!(name: auth[:info][:name])
  end
end
