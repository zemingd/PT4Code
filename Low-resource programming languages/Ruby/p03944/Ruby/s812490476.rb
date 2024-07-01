x,y,n = gets.split.map(&:to_i)
z = 0
w = 0

n.times do
  a,b,c = gets.split.map(&:to_i)

  if c == 1
    z = a 
  elsif c == 2
    x = a
  elsif c == 3
    w = b
  elsif c == 4
    y = b
  end
end

if (x-z)*(y-w) < 0
  puts 0
else
  puts (x-z)*(y-w)
end
