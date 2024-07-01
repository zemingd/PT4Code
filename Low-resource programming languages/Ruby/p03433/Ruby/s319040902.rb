n, a = gets.strip.split.map(&:to_i)
puts a > n%500 ? 'Yes' : 'No'