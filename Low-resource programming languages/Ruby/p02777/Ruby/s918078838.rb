s, t = gets.split(' ').map(&:strip)
a, b = gets.split(' ').map(&:to_i)
u    = gets.strip

h = {
  s => a,
  t => b,
  }

h[u] = h[u] - 1

puts "#{h[s]} #{h[t]}"