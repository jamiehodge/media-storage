require_relative "base"

module Media
  module Storage
    module Models
      class Directory < Base
        one_to_many :files
      end
    end
  end
end
