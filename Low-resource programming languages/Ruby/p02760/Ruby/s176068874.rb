require 'pp'

a = Array.new(9)
a[0], a[1], a[2] = gets.split.map(&:to_i)
a[3], a[4], a[5] = gets.split.map(&:to_i)
a[6], a[7], a[8] = gets.split.map(&:to_i)
n = gets.to_i
b = Array.new(n)
n.times do |i|
    b[i] = gets.to_i
end

x = Array.new(9, 0)
b.each do |i|
    t = a.find_index(i)
    if t
        x[a.find_index(i)] = 1
    end
end

#pp x

if (x[0] == 1 && x[1] == 1 && x[2] == 1) ||
    (x[3] == 1 && x[4] == 1 && x[5] == 1) ||
    (x[6] == 1 && x[7] == 1 && x[8] == 1) ||
    (x[0] == 1 && x[3] == 1 && x[6] == 1) ||
    (x[1] == 1 && x[4] == 1 && x[7] == 1) ||
    (x[2] == 1 && x[5] == 1 && x[8] == 1) ||
    (x[0] == 1 && x[4] == 1 && x[8] == 1) ||
    (x[2] == 1 && x[4] == 1 && x[6] == 1)
    puts "Yes"
else
    puts "No"
end
