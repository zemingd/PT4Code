n,x=gets.chomp.split(" ").map(&:to_i)
m = []
n.times do |i|
  m << gets.to_i
end

m.each do |i|
  x = x - i
end

m.sort!
cnt = x / m[0]
print("#{cnt+n}\n")