a = gets.split.map do |i| i.to_i end
puts a[0] < a[1] && a[1] < a[2] ? "Yes" : "No"