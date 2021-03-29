# frozen_string_literal: true

# Waterford Floorplan Layouts
coventry_floorplanlayout_list = [
  { floorplan_id: Floorplan.find_by_code('CW-1BRL').id, room_name_id: RoomName.find_by_name('Living Room').id },
  { floorplan_id: Floorplan.find_by_code('CW-1BRL').id, room_name_id: RoomName.find_by_name('Kitchen').id },
  { floorplan_id: Floorplan.find_by_code('CW-1BRL').id, room_name_id: RoomName.find_by_name('Bedroom').id },
  { floorplan_id: Floorplan.find_by_code('CW-1BRL').id, room_name_id: RoomName.find_by_name('Bathroom').id },
  { floorplan_id: Floorplan.find_by_code('CW-1BRL').id, room_name_id: RoomName.find_by_name('Kitchen').id }
]

Floorplanlayout.create(coventry_floorplanlayout_list)
