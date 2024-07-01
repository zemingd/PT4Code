a,b = gets.split(" ")
c,d = gets.chomp.split(" ").map(&:to_i)
e = gets
if a == e 
    c -= 1
else
    d -= 1
end
puts  "#{c} #{d}"