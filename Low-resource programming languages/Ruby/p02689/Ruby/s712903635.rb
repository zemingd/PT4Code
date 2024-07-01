n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

a = Array.new n 
b = Array.new n 
m.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end

routes = {}

m.times do |i|
  ah = h[a[i]-1]
  bh = h[b[i]-1]
  if ah > bh
    routes[b[i]] ||= 1
  elsif bh > ah 
    routes[a[i]] ||= 1
  else
    routes[a[i]] ||= 1
    routes[b[i]] ||= 1
  end
end

puts n - routes.keys.size