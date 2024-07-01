ar = gets.split.map(&:to_i)
puts ar[2] == (ar.sort)[1] ? "Yes" : "No"
