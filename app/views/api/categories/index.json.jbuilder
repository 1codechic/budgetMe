json.array! @categories.each do |category|
  json.partial! "categories.json.jbuilder", category:category
end