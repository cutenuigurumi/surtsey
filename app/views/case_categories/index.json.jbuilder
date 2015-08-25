json.array!(@case_categories) do |case_category|
  json.extract! case_category, :id, :name
  json.url case_category_url(case_category, format: :json)
end
