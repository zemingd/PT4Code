n = gets.to_i
h = Hash.new(0)
n.times do
  a = gets.to_i
  if h[a] == 1
    h[a] = 0
  else
    h[a] = 1
  end
end
puts h.values.inject(:+)