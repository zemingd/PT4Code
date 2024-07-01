N = gets
puts (N.scan(/./).any?{|v|v == "7"} ? "Yes" : "No")
