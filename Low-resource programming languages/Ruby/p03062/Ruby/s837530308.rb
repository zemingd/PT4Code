N = gets
A = gets.split(' ').map(&:to_i)

if A.select { |n| n.negative? }.count.even?
  puts A.map(&:abs).reduce(:+)
else
  puts A.map(&:abs).reduce(:+) - (A.map(&:abs).min*2)
end

