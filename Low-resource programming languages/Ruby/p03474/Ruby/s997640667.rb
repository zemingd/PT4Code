a, b = gets.split.collect(&:to_i)
s = gets.strip
if s.match(/\A\d{#{a}}-\d{#{b}}\z/)
  puts "Yes"
else
  puts "No"
end
