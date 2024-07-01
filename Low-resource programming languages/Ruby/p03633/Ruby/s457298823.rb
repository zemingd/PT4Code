N = gets.to_i
t = N.times.map{gets.to_i}

max = t.max
res = 0

while t.size > 0 do
  res+=max
  t.select!{|e| res%e != 0}
end

puts res