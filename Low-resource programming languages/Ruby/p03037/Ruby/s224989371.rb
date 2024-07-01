a, b = gets.split(" ").map(&:to_i)

ary = []
b.times do
  ary << gets.split(" ").map(&:to_i)
end

gate_span = (ary[0][0]..ary[0][1]).to_a
c = []

(b-1).times do |i|
    c = (ary[i+1][0]..ary[i+1][1]).to_a
    gate_span = gate_span & c
end

puts gate_span.size >= a ? a : gate_span.size
