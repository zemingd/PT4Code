s,t = gets.chomp.split(" ")
a,b = gets.chomp.split(" ").map(&:to_i)
u   = gets.chomp
if u == s
  a -= 1
end
if u == t
  b -= 1
end
print("#{a} #{b}\n")