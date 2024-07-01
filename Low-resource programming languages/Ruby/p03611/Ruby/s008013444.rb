n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
b = Hash.new(0)
n.times do |i|
  b[a[i]] += 1
end
m = 0
for i in a[0]..a[-1]
  m = [m,b[i-1]+b[i]+b[i+1]].max
end
p m