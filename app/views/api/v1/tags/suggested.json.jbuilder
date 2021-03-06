json.status response.status

if @pagination
  json.pagination do
    json.page @pagination[:page]
    json.total_pages @pagination[:total_pages]
    json.count @pagination[:count]
  end
end

json.data do
  json.array! @tags, partial: '/api/v1/tags/tag', as: :tag
end