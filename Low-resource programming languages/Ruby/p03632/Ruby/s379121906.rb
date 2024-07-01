a, b , c, d = gets.split.map(&:to_i)

if c - a > 0
  start = c
else
  start = a
end

if d-b > 0
  fin = b
else
  fin = d
end

if fin - start > 0
  win = fin - start
else
  win = 0
end

puts win