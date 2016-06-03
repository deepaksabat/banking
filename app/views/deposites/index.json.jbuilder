json.array!(@deposites) do |deposite|
  json.extract! deposite, :id, :date, :ammount
  json.url deposite_url(deposite, format: :json)
end
