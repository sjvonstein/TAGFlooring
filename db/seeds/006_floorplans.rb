# frozen_string_literal: true

# Waterford Floorplans
coventry_floorplan_list = [
  { name: 'Coventry One Bedroom; Lower', code: 'CW-1BRL', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry One Bedroom; Upper', code: 'CW-1BRU', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry One Bedroom; Galley', code: 'CW-1GL', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry Two Bedroom; Upper', code: 'CW-2BRU', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry Two Bedroom; Lower', code: 'CW-2BRL', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry Two Bedroom w/ Hookups; Upper', code: 'CW-2BRUW', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry Two Bedroom w/ Hookups; Lower', code: 'CW-2BRLW', community_id: Community.find_by_code('CW').id, floors: 1 },
  { name: 'Coventry Three Bedroom; Lower', code: 'CW-3BRL', community_id: Community.find_by_code('CW').id, floors: 1 }
]

Floorplan.create(coventry_floorplan_list)

governours_floorplan_list = [
  { name: 'Governours Two Bedroom', code: 'GO-2X2', community_id: Community.find_by_code('GO').id, floors: 1 },
  { name: 'Governours Two Bedroom Large Family Room', code: 'GO-2X2L', community_id: Community.find_by_code('GO').id, floors: 2 },
  { name: 'Governours Two Bedroom Small Family Room', code: 'GO-2X2S', community_id: Community.find_by_code('GO').id, floors: 2 },
  { name: 'Governours Two Bedroom End Townhome', code: 'GO-ETH', community_id: Community.find_by_code('GO').id, floors: 3 },
  { name: 'Governours Two Bedroom Mid Townhome', code: 'GO-MTH', community_id: Community.find_by_code('GO').id, floors: 3 }
]

Floorplan.create(governours_floorplan_list)
