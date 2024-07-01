n,m=gets.chomp.split(" ").map { |e| e.to_i }
py = []

m.times do |i|
  p,y=gets.chomp.split(" ").map { |e| e.to_i }
  py[i] = ("%06d" % p) + ("%06d" % y) + ("%06d" % i)
end

ans = Array.new(m)

hoge = "000001"
temp = 1
a = py.sort

for x in a do
  if hoge != x[0..5]
    hoge = x[0..5]
    temp = 1
  end
  index = x[12..17].to_i
  puts index
  ans[index] = x[0..5] + ("%06d" % temp)
  temp += 1

end

puts ans
