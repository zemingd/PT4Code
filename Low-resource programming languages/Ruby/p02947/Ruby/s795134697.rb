def factorial(x)
  f = 1
  for i in 1..x do
    f *= i
  end
  return f
end

def combi(p, q)
  return factorial(p) / factorial(q) / factorial(p-q)
end

n = gets.to_i
h = {}
for i in 0...n do
  s = gets.chomp.split("").sort.join("")
  if h.include?(s)
    h[s] += 1
  else
    h[s] = 1
  end
end

count = 0
h.each do |k, v|
  if v >= 2
    count += combi(v, 2)
  end
end
puts count
