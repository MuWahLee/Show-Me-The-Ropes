collection @pins, root: :pins

attributes :id, :long
attributes :id, :lat
attributes :id, :guideID
attributes :id, :activity
attributes :id, :description

node :href do |pin|
  pin_url(pin)
end