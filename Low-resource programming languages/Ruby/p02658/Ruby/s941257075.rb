n = gets.to_i
as = gets.chomp
arr = as.split(' ').map(&:to_i)

mul = 1

arr.each { |i| mul *= i }

if mul > 1_000_000_000_000_000_000
  puts -1
else
  puts mul
end
