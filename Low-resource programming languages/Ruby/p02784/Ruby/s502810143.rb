H, N = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts H <= A.inject(:+) ? 'Yes' : 'No'