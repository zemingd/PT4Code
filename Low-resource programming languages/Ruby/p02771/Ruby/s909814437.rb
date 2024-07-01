a = gets.split.map(&:to_i)
puts a.uniq.length
puts a.uniq.length == 2 ? "Yes" : "No"