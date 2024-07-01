n = gets.to_s.to_i
a = gets.to_s.split.map{|t|t.to_i}.sort

if n == 1
  puts 1
  exit
end

if a[0] == 1 && a[1] != 1
  puts 1
  exit
end

if a[0] == 1 && a[1] == 1
  puts 0
  exit
end

# p a
hantei = [true] * ( 10 ** 6 + 1)

i = 0
while i < n
  
  t = a[i]
  if t == a[i+1]
    hantei[t] = false
  end
  
  s = t
  while s + t <= 1_000_000
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