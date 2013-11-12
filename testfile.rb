file = File.new("browser.txt", "r")
str = file.gets
if (str == "chrome")
  puts "found chrome"
else
  puts "found unknown"
end