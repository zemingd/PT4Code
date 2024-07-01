a = gets.split.map{|i|i.to_i}.sort
puts a[0] + a[1] == a[2] ? "Yes" : "No"
