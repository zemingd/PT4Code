a, b = gets.split.map(&:to_f)
c = (a/0.08).floor
d = (b/0.1).floor
if d > c
  puts -1
else
  if b == (c.to_f*0.1).floor
    puts c
  else
    puts -1
  end
end