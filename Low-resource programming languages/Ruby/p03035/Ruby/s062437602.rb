A, B = gets.split(' ').map(&:to_i)

if 13 <= A
  puts B
elsif 6 <= A
  puts B / 2
else
  puts 0
end