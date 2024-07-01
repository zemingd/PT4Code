item = gets.chomp.split(/\s+/).map { |e| e.to_i }

h = item[0]
n = item[1]

a = gets.chomp.split(/\s+/).map { |e| e.to_i }

if h <= a.inject(:+)
  puts "Yes"
else
  puts "No"
end
