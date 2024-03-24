def extract_urls(text)
  url1 = text.scan(/((http:|ftp:|https:)\/\/w{3}?.\w+.(com|org|net|int|edu|gov|mil)(\/\S*)?)[^\w]/)
  for a in url1 do
    puts a[0]
  end
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
