require "namegen/version"
require "namegen/generator"
require "namegen/adjective"
require "namegen/noun"

module Namegen
  def self.generate(n = 1)
    n.times do
      puts "#{Adjective.random}-#{Noun.random}"
    end
  end

  # Generate verbosely (include adjective definition)
  def self.generate_v(n = 1)
    n.times do
      adj = Adjective.random
      defn = Adjective::EXQUISITE[adj]
      rtn = "#{adj}-#{Noun.random}"

      if defn
        rtn += "\n  #{adj}: #{defn}"
      end

      puts rtn
    end
  end
end
