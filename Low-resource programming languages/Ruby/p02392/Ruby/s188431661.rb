a = gets.split(" ").map!(&:to_i)
puts a[0] < a[1] && a[1] < a[2] ? "Yes" : "No"