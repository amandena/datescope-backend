class User < ApplicationRecord
  has_secure_password

  has_many :messages
  has_many :matches

  validates :email, uniqueness: true
  validates :email, :name, :age, :sign, :bio, :gender, :preference, :location, :instagram, presence: true
  validates :age, numericality: {greater_than: 17}
  validates_inclusion_of :gender, :in => ['male', 'female']
  validates_inclusion_of :preference, :in => ['male', 'female', 'both']
  validates_inclusion_of :sign, :in => ['aries', 'taurus', 'gemini', 'cancer', 'leo', 'virgo', 'libra', 'scorpio', 'sagittarius', 'capricorn', 'aquarius', 'pisces']

  def compatibility
    User.all.map do |user|
      if self != user
        if self.location === user.location
          if self.preference === 'both' || self.preference === user.gender
            if self.aries && user.sign === 'aries'
              user
            elsif self.taurus && user.sign === 'taurus'
              user
            elsif self.gemini && user.sign === 'gemini'
              user
            elsif self.cancer && user.sign === 'cancer'
              user
            elsif self.leo && user.sign === 'leo'
              user
            elsif self.virgo && user.sign === 'virgo'
              user
            elsif self.libra && user.sign === 'libra'
              user
            elsif self.scorpio && user.sign === 'scorpio'
              user
            elsif self.sagittarius && user.sign === 'sagittarius'
              user
            elsif self.capricorn && user.sign === 'capricorn'
              user
            elsif self.aquarius && user.sign === 'aquarius'
              user
            elsif self.pisces && user.sign === 'pisces'
              user
            end
          end
        end
      end
    end.compact
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
