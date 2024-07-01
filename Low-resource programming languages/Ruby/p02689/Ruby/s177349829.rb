n, m = gets.chomp.split.map(&:to_i)
h = gets.chomp.split.map(&:to_i)
a = []
b = []
m.times do
  c = gets.split.map(&:to_i)
  a << c[0]
  b << c[1]
end
d = Array.new(n){'yes'}

m.times do |i|
  if h[a[i] - 1] > h[b[i] - 1]
    d[b[i]-1] = 'no'
  elsif h[a[i] - 1] < h[b[i] - 1]
    d[a[i]-1] = 'no'
  elsif h[a[i] - 1] == h[b[i] - 1]
    d[a[i]-1] = 'no'
    d[b[i]-1] = 'no'
  end
end
d.delete('no')
puts d.length