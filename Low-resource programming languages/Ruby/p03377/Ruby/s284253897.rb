A, B, X = gets.chomp.split(" ").map(&:to_i)

if (X-A <= B)&&(X-A >= 0)
puts "YES"
else
puts "NO"
end
