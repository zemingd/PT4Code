N = gets.to_i
data = gets.split
if data.uniq.size == 3
  puts 'Three'
else
  puts 'Four'
end