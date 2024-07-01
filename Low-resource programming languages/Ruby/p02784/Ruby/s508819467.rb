H,N = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

sum = A.inject do |sum, n|
  sum + n
end

if (sum >= H)
  puts 'Yes'
else
  puts 'No'
end
