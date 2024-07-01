n = gets.to_i
t,a = gets.split(" ")
a = a.to_i
t = t.to_i
h = gets.split(" ").map(&:to_i)

temp = []
h.each do |h|
    ondo = t-(h*0.006)
    temp.push((ondo-a).abs)
end

puts temp.index(temp.min)+1