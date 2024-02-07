json.array! @users_loved_items do |users_loved_item|
  json.id users_loved_item.id
  json.item_id users_loved_item.item_id
  json.user_id users_loved_item.user_id
  json.created_at users_loved_item.created_at
  json.updated_at users_loved_item.updated_at
end

