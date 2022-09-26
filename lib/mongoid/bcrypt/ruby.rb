require "mongoid/bcrypt/ruby/version"
require 'bcrypt'

module BCrypt
  class Password < String
    class << self
      def mongoize(password)
        create password.mongoize
      end

      def demongoize(password)
        case password
        when String then self.new(password)
        when nil then nil
        else password
        end
      end

      def evolve(password)
        password.mongoize
      end
    end

    def mongoize
      self.to_s
    end
  end
end
