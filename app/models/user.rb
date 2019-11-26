class User < ApplicationRecord
  has_secure_password

  has_many :messages
  has_many :matches

  validates :email, uniqueness: true
  validates :email, :name, :age, :sign, :bio, :gender, :preference, :location, :social_media, presence: true
  validates_inclusion_of :gender, :in => ['male', 'female']
  validates_inclusion_of :preference, :in => ['male', 'female', 'both']
  validates_inclusion_of :sign, :in => ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces']

  def find_matches
    User.all.map do |user|
      if self !== user
        if self.location === user.location
          if self.preference === 'both'
            if self.preference === user.gender
              self.sign_compatibility(user)
            end
          end
        end
      end
    end
  end

  def sign_compatibility(user)
    if self.aries && user.aries
      self.matches.push(user)
    end
    if self.taurus && user.taurus
      self.matches.push(user)
    end
    if self.gemini && user.gemini
      self.matches.push(user)
    end
    if self.cancer && user.cancer
      self.matches.push(user)
    end
    if self.leo && user.leo
      self.matches.push(user)
    end
    if self.virgo && user.virgo
      self.matches.push(user)
    end
    if self.libra && user.libra
      self.matches.push(user)
    end
    if self.scorpio && user.scorpio
      self.matches.push(user)
    end
    if self.sagittarius && user.sagittarius
      self.matches.push(user)
    end
    if self.capricorn && user.capricorn
      self.matches.push(user)
    end
    if self.aquarius && user.aquarius
      self.matches.push(user)
    end
    if self.pisces && user.pisces
      self.matches.push(user)
    end
    self.matches.uniq
  end

  def aries
    if self.sign === 'leo' || self.sign === 'gemini' || self.sign === 'libra'
      true
    else
      false
    end
  end

  def taurus
    if self.sign === 'virgo' || self.sign === 'cancer' || self.sign === 'scorpio'
      true
    else
      false
    end
  end

  def gemini
    if self.sign === 'libra' || self.sign === 'aries' || self.sign === 'sagittarius'
      true
    else
      false
    end
  end

  def cancer
    if self.sign === 'scorpio' || self.sign === 'taurus' || self.sign === 'capricorn'
      true
    else
      false
    end
  end

  def leo
    if self.sign === 'aries' || self.sign === 'libra' || self.sign === 'aquarius'
      true
    else
      false
    end
  end

  def virgo
    if self.sign === 'taurus' || self.sign === 'cancer' || self.sign === 'pisces'
      true
    else
      false
    end
  end

  def libra
    if self.sign === 'gemini' || self.sign === 'leo' || self.sign === 'aries'
      true
    else
      false
    end
  end

  def scorpio
    if self.sign === 'cancer' || self.sign === 'virgo' || self.sign === 'taurus'
      true
    else
      false
    end
  end

  def sagittarius
    if self.sign === 'leo' || self.sign === 'virgo' || self.sign === 'gemini'
      true
    else
      false
    end
  end

  def capricorn
    if self.sign === 'taurus' || self.sign === 'pisces' || self.sign === 'cancer'
      true
    else
      false
    end
  end

  def aquarius
    if self.sign === 'gemini' || self.sign === 'sagittarius' || self.sign === 'leo'
      true
    else
      false
    end
  end

  def pisces
    if self.sign === 'scorpio' || self.sign === 'capricorn' || self.sign === 'virgo'
      true
    else
      false
    end
  end
end
