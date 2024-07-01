n = gets.chomp.to_i
a = gets.chomp.split(/\s+/).map { |e| e.to_i }

puts a.uniq.size == a.size ? "YES" : "NO"
