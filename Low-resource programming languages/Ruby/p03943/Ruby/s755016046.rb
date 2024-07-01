a,b,c = gets.split(" ").map(&:to_i)
result = "No"
result = "Yes" if ((a==b+c)||(b==a+c)||(c==b+a))
puts result