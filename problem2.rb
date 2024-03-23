def parse_invoices(invoice_data)
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

p parse_invoices(invoice_entries)

m = "David 30".match /(?<name>\w+) (?<age>\d+)/
p m[:age], (m[:name])
# => "30"

# => "David"
