n,m=gets.chomp.split(" ").map { |e| e.to_i }
py = []

m.times do |i|
  p,y=gets.chomp.split(" ").map { |e| e.to_i }
  py[i] = ("%06d" % p) + ("%06d" % y) + i.to_s
end

ans = Array.new(m)

hoge = 1
temp = 1
a = py.sort

for x in a do
  if hoge != x[5].to_i
    hoge += 1
    temp = 1
  end
  index = x[12].to_i
  ans[index] = x[1..6] + ("%06d" % temp)
  temp += 1

end

puts ans
