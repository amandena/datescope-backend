class User < ApplicationRecord
  has_secure_password

  has_many :messages
  has_many :matches

  validates :email, uniqueness: true
  validates :email, :name, :age, :sign, :bio, :gender, :preference, :location, :social_media, presence: true
  validates_inclusion_of :gender, :in => ['male', 'female']
  validates_inclusion_of :preference, :in => ['male', 'female', 'both']

  def find_matches(location, gender, sign)
    if self.location === location
      if self.preference === 'both'
        if self.preference === gender
          if self.sign_compatability(sign)

          end
        end
      end
    end
  end

  def sign_compatability(other_sign)

  end
end
