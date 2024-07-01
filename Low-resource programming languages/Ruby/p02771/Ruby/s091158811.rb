a,b,c = gets.split(" ")
puts ((a == b && b == c && a == c ) || (a != b && b != c && a != c)) ? "No" : "Yes"
