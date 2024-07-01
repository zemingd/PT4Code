n = gets.to_i
u = Array.new(n-1)
v = Array.new(n-1)
w = Array.new(n-1)
(n-1).times do |i|
  u[i], v[i], w[i] = gets.split.map(&:to_i)
end

# ev = Hash.new
# od = []
ev = Array.new(n, 0)

(n-1).times do |i|
  if w[i].even?
    ev[u[i]-1] = 1
    ev[v[i]-1] = 1
  else
    if ev[u[i]-1] == 1
      ev[v[i]-1] = 0
    else
      ev[v[i]-1] = 1
    end
  end
end
# puts ev.inspect

# puts (1..n).to_a - ev

puts ev


# puts od.inspect
