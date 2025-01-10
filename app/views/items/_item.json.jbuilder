json.extract! item, :id, :description, :is_done, :list_id, :created_at, :updated_at
json.url item_url(item, format: :json)
