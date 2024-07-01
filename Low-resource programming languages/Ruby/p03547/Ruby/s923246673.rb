a,b = gets.split.map{|c| c.to_i(16) }
if a == b
  puts '='
elsif a < b
  puts '<'
else
  puts '>'
end