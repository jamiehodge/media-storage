require_relative "base"

module Media
  module Storage
    module Controllers
      class Directories < Base

        set(:model)  { Models::Directory }
        set(:policy) { Policies::Directory }

        crud
      end
    end
  end
end
