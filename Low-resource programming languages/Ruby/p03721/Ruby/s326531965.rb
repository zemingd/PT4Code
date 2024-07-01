n,k = gets.strip.split.map(&:to_i)
rec = Array.new(10**5,0)
n.times do
  a,b = gets.strip.split.map(&:to_i)
  rec[a-1] += b
end

s = Array.new(rec.length+1)
s[0] = 0
0.upto(rec.length-1) do |i|
  s[i+1] = s[i] + rec[i]
end

i = 0
while s[i] < k do
  i += 1
end
puts i