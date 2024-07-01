s = gets.chomp*2
t = gets.chomp
g = s.length / 2

c = 0
w = -1
t.chars do |ti|
  u = s.index(ti, w+1)
  if u == nil
    puts "-1"
    exit
  else
    c += u - w
    w = u % g
  end
end
puts c
