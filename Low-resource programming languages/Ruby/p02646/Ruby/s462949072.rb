a,v = gets.split.map(&:to_i)
b,w = gets.split.map(&:to_i)
t = gets.to_i
if v <= w then
    puts "NO"
    exit
end
d = (a-b).abs.to_f
d_v = (v-w).abs
num = (d/d_v).ceil
puts num <= t ? "YES" : "NO"