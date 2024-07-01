A, V = gets.split(' ').map(&:to_i)
B, W = gets.split(' ').map(&:to_i)
T = gets.to_i

vr = V - W
if vr <= 0
    puts "NO"
    exit
end
xr = [A-B, B-A].max
puts ((T * vr >= xr) ? "YES" : "NO")