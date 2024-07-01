n = gets.chomp.to_i
t, a = gets.split(' ')
t = t.to_i
a = a.to_i
h = gets.split(' ')

new = []
h.each do |f|
    new << (a - (t - 0.006*f.to_f)).abs
end

puts new

print new.index(new.min)+1