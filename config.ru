require "./lib/media/storage"

Media::Storage::Controllers::Base.children.each do |child|
  map "/%s" % child.namespace do
    run child
  end
end
