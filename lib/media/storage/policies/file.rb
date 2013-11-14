require_relative "base"

module Media
  module Storage
    module Policies
      class File < Base

        def fields
          %w(directory_id name file)
        end
      end
    end
  end
end
