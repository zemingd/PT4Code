attrs = Array.new
while line = $stdin.gets
  attrs << line.chomp.split
end
start_time = Time.now

K = attrs[0][0].to_i
sum = 0
for a in 1..K do
  for b in 1..K do
    tmp = a.gcd(b)
    for c in 1..K do
      sum += tmp.gcd(c)
    end
  end
end
puts sum