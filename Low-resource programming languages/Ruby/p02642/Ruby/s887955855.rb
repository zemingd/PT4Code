n = gets.to_s.to_i
a = gets.to_s.split.map{|t|t.to_i}.sort

if a[0] == 1
  puts 0
  exit
end
# p a
hantei = [true] * ( 2 * 10 ** 5 + 1)

i = 0
while i < n
  
  t = a[i]
  if t == a[i+1]
    hantei[t] = false
  end
  
  s = t
  while s <= 200_000
    s += t
    hantei[s] = false
  end
  
  i += 1
end
# p hantei[18]
ans = 0
a.each do |t|
  ans += 1 if hantei[t]
end

puts ans