require "namegen/version"
require "namegen/adjectives"
require "namegen/nouns"

module Namegen
  def generate
    "#{ADJS[rand(ADJS.count)]}-#{NOUNS[rand(NOUNS.count)]}"
  end
end
