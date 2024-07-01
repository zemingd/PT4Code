a, b, c = gets.strip.split.map(&:to_i)
if a > b
  tmp = a
  a = b
  b = tmp
end
if a > c
  tmp = a
  a = c
  c = tmp
end
if b > c
  tmp = b
  b = c
  c = tmp;
end
puts (b-a)+(c-b)
