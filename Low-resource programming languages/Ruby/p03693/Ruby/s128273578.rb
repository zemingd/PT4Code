a= gets.strip.gsub(" ", "").to_i
puts a%4 == 0 ? "YES" : "NO"
