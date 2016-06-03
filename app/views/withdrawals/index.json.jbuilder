json.array!(@withdrawals) do |withdrawal|
  json.extract! withdrawal, :id, :date, :ammount
  json.url withdrawal_url(withdrawal, format: :json)
end
