require_relative "base"

module Media
  module Storage
    module Controllers
      class Files < Base

        set(:model)  { Models::File }
        set(:policy) { Policies::File }

        crud
        download
      end
    end
  end
end
