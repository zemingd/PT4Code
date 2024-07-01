A, B, C = gets.split.map(&:to_i)

i = 1
h = {}
flag = false
while 1
  y = A * i % B
  break if h.has_key?(y)
  h[y] = 1 
  if y == C
    flag = true 
    break 
  end
  i += 1
end
puts flag ? "YES" : "NO"