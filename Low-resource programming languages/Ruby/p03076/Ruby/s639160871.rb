a = []
for i in 0..4 do
  a << gets.to_i
end
r = []
a.each do |a|
  if a%10 == 0
    r << 0
  else
    r << 10 - a%10
  end
end
p a.inject(:+) + r.inject(:+) - r.max