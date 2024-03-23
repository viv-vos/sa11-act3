def parse_invoices(invoice_data)
  invoice_data.each_line do |x|
    data = x.match(/(\d{4}-[0-1][0-9]-[0-3][0-9]) - (INV\d{3}) - (([a-zA-Z](\s*)\d{0})+) - (\$\d*)/)
    puts "Date: #{data[1]}, Invoice Number: #{data[2]}, Client: #{data[3]}, Amount: #{data[6]}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
