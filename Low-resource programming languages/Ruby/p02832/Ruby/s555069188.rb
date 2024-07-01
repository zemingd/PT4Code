n = gets.to_i
a = gets.split.map(&:to_i)
ab = a.clone
le = a.size
x = 0
y = -1
z = 0
while z == 0
  x += 1
  ind = a.index(x)
  if ind != nil && 0 <= ind && ind <= (le-1)
    a.slice!(0..ind)
    le -= (ind+1)
  else
    z = 1
    x -= 1
  end
end
if x != 0
  puts (ab.size) - x
else
  puts -1 
end