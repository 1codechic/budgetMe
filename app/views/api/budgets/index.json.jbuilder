json.array! @budgets.each.do |budget|
  json.partial! "budgets.json.jbuilder", budget:budget
end