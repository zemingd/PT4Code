h, a = gets.split(" ").map(&:to_i)
damage = gets.split(" ").map(&:to_i)

if h <= damage.inject(:+)
  puts 'Yes'
else
  puts 'No'
end