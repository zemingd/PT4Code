n, m = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)

edge = []
m.times do
  a, b = gets.chomp.split.map(&:to_i)
  a -= 1
  b -= 1
  edge.push [a, b]
end

f = Array.new(n, true)

edge.each do |a, b|
  if h[a] > h[b]
    f[b] = false
  elsif h[a] < h[b]
    f[a] = false
  else
    f[a] = f[b] = false
  end
end

puts f.select{ |x| x }.size
