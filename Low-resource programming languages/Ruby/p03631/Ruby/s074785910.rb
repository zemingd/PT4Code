a = gets.to_i
a = a - (a/10%10)*10
puts a%101==0 ? "Yes" : "No"