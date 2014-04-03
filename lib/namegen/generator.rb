class Generator
  VALUES = []

  def self.random
    self::VALUES[rand(self::VALUES.count)]
  end
end