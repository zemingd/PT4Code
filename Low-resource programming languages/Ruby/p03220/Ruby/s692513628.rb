N = gets.to_i
T , A = gets.split.map!{|i| i.to_i}
H = gets.split.map!{|i| T - (i.to_i) * 0.006}
min = 10 ** 4
k = 0

N.times do |i|
    if min > (A - H[i]).abs
        min = (A - H[i]).abs
        k = i + 1
    end
end

puts k