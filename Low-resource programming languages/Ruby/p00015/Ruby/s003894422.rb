def solve(a, b)
  s = a + b
  if s.to_s.size > 80
    "overflow"
  else
    s.to_s
  end
end

n = gets.to_i
n.times do
  a = gets.to_i
  b = gets.to_i
  puts solve(a, b)
end