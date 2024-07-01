a, b = gets.chomp.split.map(&:to_i)
if b >= a
  puts a
  exit
end
puts a - 1
