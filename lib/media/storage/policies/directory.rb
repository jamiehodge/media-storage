require_relative "base"

module Media
  module Storage
    module Policies
      class Directory < Base

        def fields
          %w(name)
        end
      end
    end
  end
end
