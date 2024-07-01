a = gets.to_i
x = []
for num in 0..a-1 do
  b = gets.chomp
  x << b
end

h = Hash.new(0)
x.each { | v | h.store(v, h[v]+1) }
h = h.sort_by { |_, v| v }.reverse
l = h.length
y =[]
for num in 0..l-1 do
  if h[num][1] == h[0][1]
    y << h[num][0]
  end
end
puts y.sort