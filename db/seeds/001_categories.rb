# frozen_string_literal: true

# Main Categories
category_list = [
  { name: 'Carpet', lifeExpectancy: 7 },
  { name: 'Vinyl Flooring', lifeExpectancy: 7 },
  { name: 'Wood Flooring', lifeExpectancy: 25 },
  { name: 'Laminate Flooring', lifeExpectancy: 10 },
  { name: 'Ceramic', lifeExpectancy: 25 }
]

Category.create(category_list)

# Carpet Subcategories
subcategory_carpet_list = [
  { name: 'Berber Carpet', lifeExpectancy: 7, parent_id: Category.find_by_name('Carpet').id },
  { name: 'Texture Carpet', lifeExpectancy: 7, parent_id: Category.find_by_name('Carpet').id },
  { name: 'Pattern Carpet', lifeExpectancy: 7, parent_id: Category.find_by_name('Carpet').id }
]

Category.create(subcategory_carpet_list)

# Vinyl Subcategories
subcategory_vinyl_list = [
  { name: 'Luxury Vinyl Plank', lifeExpectancy: 10, parent_id: Category.find_by_name('Vinyl Flooring').id },
  { name: 'Luxury Vinyl Tile', lifeExpectancy: 10, parent_id: Category.find_by_name('Vinyl Flooring').id },
  { name: 'Sheet Vinyl', lifeExpectancy: 7, parent_id: Category.find_by_name('Vinyl Flooring').id },
  { name: 'Peel and Stick', lifeExpectancy: 7, parent_id: Category.find_by_name('Vinyl Flooring').id },
  { name: 'Glue Down Vinyl Plank', lifeExpectancy: 7, parent_id: Category.find_by_name('Vinyl Flooring').id },
  { name: 'Click Lock Vinyl', lifeExpectancy: 7, parent_id: Category.find_by_name('Vinyl Flooring').id }
]

Category.create(subcategory_vinyl_list)

# Wood Subcategories
subcategory_wood_list = [
  { name: 'Solid Hardwood', lifeExpectancy: 25, parent_id: Category.find_by_name('Wood Flooring').id },
  { name: 'Engineered HardWood', lifeExpectancy: 25, parent_id: Category.find_by_name('Wood Flooring').id },
  { name: 'Solid Wood', lifeExpectancy: 25, parent_id: Category.find_by_name('Wood Flooring').id }
]

Category.create(subcategory_wood_list)

# Laminate Subcategories
subcategory_laminate_list = [
  { name: 'Wood Laminate', lifeExpectancy: 10, parent_id: Category.find_by_name('Laminate Flooring').id },
  { name: 'Tile and Stone Laminate', lifeExpectancy: 10, parent_id: Category.find_by_name('Laminate Flooring').id }
]

Category.create(subcategory_laminate_list)

# Ceramic Subcategories
subcategory_ceramic_list = [
  { name: 'Ceramic Tile', lifeExpectancy: 25, parent_id: Category.find_by_name('Ceramic').id },
  { name: 'Ceramic Plank', lifeExpectancy: 25, parent_id: Category.find_by_name('Ceramic').id },
  { name: 'Mosaic Tile', lifeExpectancy: 25, parent_id: Category.find_by_name('Ceramic').id }
]

Category.create(subcategory_ceramic_list)
