x,y,n = gets.split.map(&:to_i)
z = 0
w = 0

n.times do
  a,b,c = gets.split.map(&:to_i)

  if c == 1
    z = a if a > z
  elsif c == 2
    x = a if x > a
  elsif c == 3
    w = b if b > w
  elsif c == 4
    y = b if y > b
  end
end

x = z = 0 if (x < z)
y = w = 0 if (y < w)

puts (x-z)*(y-w)
