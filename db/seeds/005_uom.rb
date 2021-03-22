# frozen_string_literal: true

uom_list = %w[sy sf ea hr]

uom_list.each { |n| Uom.create(name: n) }
