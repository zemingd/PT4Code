n = gets.to_i
h = Hash.new(0)
n.times do
  a = gets.chomp
  h[a] += 1
end
puts h.select{|k, v| v.odd?}.size