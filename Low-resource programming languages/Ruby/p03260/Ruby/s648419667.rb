A, B = gets.chomp.split(" ").map(&:to_i)

if A.even? || B.even?
  puts 'No'
else
  puts 'Yes'
end
