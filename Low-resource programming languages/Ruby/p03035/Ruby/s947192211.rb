A, B = gets.chomp.split(' ').map(&:to_i)

if A <= 6
  puts 0
  exit
end

if A <= 12
  puts B/2 
  exit
end

puts B
