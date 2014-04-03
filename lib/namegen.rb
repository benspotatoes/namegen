require "namegen/version"
require "namegen/generator"
require "namegen/adjective"
require "namegen/noun"

module Namegen
  def self.generate
    "#{Adjective.random}-#{Noun.random}"
  end

  # Generate verbosely (include adjective definition)
  def self.generate_v
    adj = Adjective.random
    defn = Adjective::EXQUISITE[adj]
    rtn = "#{adj}-#{Noun.random}"

    if defn
      rtn += "\n  #{adj}: #{defn}"
    else
      rtn
    end
  end
end
