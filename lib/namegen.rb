require "namegen/version"
require "namegen/adjectives"
require "namegen/nouns"

module Namegen
  def self.generate
    "#{ADJS[rand(ADJS.count)]}-#{NOUNS[rand(NOUNS.count)]}"
  end
end
