n,m = getsgets.chomp.split.map(&:to_i)
num = Array.new(n,0)
m.times do |i|
  a,b = gets.chomp.split.map(&:to_i)
  num[a - 1] += 1
  num[b - 1] += 1
end
n.times do |0|
  puts num[i]
end