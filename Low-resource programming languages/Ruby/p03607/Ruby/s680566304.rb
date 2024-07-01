N = gets.to_i
h = Hash.new(0)
N.times do
  h[gets.to_i] += 1
end
puts h.values.count{|x| x.odd?}