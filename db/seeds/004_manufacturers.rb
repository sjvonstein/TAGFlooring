# frozen_string_literal: true

manufacturers_list = [
  'Mohawk Flooring',
  'Armstrong Flooring',
  'Shaw Floors',
  'Congoleum'
]

manufacturers_list.each { |n| Manufacturer.create(name: n) }
