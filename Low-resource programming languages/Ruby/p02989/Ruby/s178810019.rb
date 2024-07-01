n = gets.to_i
ar = gets.split.map(&:to_i)
ar.sort!
puts ar[n/2] - ar[(n/2)-1]
