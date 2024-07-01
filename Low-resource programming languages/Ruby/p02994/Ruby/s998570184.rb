a = gets.split
n = a[0].to_i
l = a[1].to_i
h = []


t = 0
n.times do
    h[t] = l + t 
    t += 1
end
a = h.min_by{|x| (x-0).abs}
puts h.inject(:+) - a