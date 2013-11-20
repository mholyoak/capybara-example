File.open('spec/browser.txt', 'w') do |browser_file|
  browser_file.puts ARGV[0]
end