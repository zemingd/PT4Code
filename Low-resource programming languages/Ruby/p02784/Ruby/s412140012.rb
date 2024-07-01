H,N = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

if A.inject(:+) >= H
  puts 'Yes'
else
  puts 'No'
end