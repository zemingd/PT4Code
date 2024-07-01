n = gets.to_i

h = Hash.new(0)
n.times {h[gets.chomp] += 1}

h = h.sort_by{|k,v| -v}
m = h[0][1]

s = []
h.each do |k,v|
    break if m != v
    s << k
end

puts s.sort