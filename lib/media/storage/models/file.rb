require_relative "base"

module Media
  module Storage
    module Models
      class File < Base
        many_to_one :directory

        storable
      end
    end
  end
end
