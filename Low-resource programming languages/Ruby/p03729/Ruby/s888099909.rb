a, b, c = gets.split(" ").map(&:to_i)
if a[-1] == b[0] && b[-1] == c[0]
     puts "YES"
else
     puts "NO"
end
