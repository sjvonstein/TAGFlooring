# frozen_string_literal: true

room_names_list = [
  'Living Room',
  'Dining Room',
  'Bedroom',
  'Bathroom',
  'Half Bathroom',
  'Master Bedroom',
  'Master Bathroom',
  'Bedroom 2',
  'Bedroom 3',
  'Family Room',
  'Entry Stairwell',
  'Kitchen',
  'Garage'
]

room_names_list.each { |n| RoomName.create(name: n) }
