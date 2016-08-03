json.array!(@vouchers) do |voucher|
  json.extract! voucher, :id, :no, :date, :payee, :description, :amount
  json.url voucher_url(voucher, format: :json)
end
