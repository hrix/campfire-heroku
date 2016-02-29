class User < ApplicationRecord
  has_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def fullname
    "#{firstname} #{lastname}"
  end

  def online?
    $redis_onlines.exists( self.id )
  end

end
