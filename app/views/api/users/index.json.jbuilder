json.array! @users.each do |user|
  json.partial! "users.json.jbuilder", user:user
end