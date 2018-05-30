# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'csv'

Mushroom.destroy_all


url = 'https://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data'
info = open(url).read
mushrooms = CSV.parse(info)

# mushrooms.first
# line = mushrooms.first

mushrooms.each do |line|

edible,
cap_shape,
cap_surface,
cap_color,
bruises,
odor,
gill_attachment,
gill_spacing,
gill_size,
gill_color,
stalk_shape,
stalk_root,
stalk_surface_above_ring,
stalk_surface_below_ring,
stalk_color_above_ring,
stalk_color_below_ring,
veil_type,
veil_color,
ring_number,
ring_type,
spore_print_colororange,
population,
habitat = line


line = Mushroom.new(
  edible: edible,
  cap_shape: cap_shape,
  cap_surface: cap_surface,
  cap_color: cap_color,
  bruises: bruises,
  odor: odor,
  gill_attachment: gill_attachment,
  gill_spacing: gill_spacing,
  gill_size: gill_size,
  gill_color: gill_color,
  stalk_shape: stalk_shape,
  stalk_root: stalk_root,
  stalk_surface_above_ring: stalk_surface_above_ring,
  stalk_surface_below_ring: stalk_surface_below_ring,
  stalk_color_above_ring: stalk_color_above_ring,
  stalk_color_below_ring: stalk_color_below_ring,
  veil_type: veil_type,
  veil_color: veil_color,
  ring_number: ring_number,
  ring_type: ring_type,
  spore_print_colororange: spore_print_colororange,
  population: population,
  habitat: habitat)
line.save

end

















