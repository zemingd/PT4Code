x, k, d = gets.to_s.split.map { |e| e.to_i.abs }

t = x / d

if t >= k
  puts x - d * k
  exit
end

k -= t
y = x - d * t

if k.even?
  puts y
else
  puts d - y
end