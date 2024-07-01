a,b,c = gets.chomp.split(" ").map(&:to_i)
ans = 'No'
ans = 'Yes' if a+b == c || a+c == b || b+c == a
puts ans