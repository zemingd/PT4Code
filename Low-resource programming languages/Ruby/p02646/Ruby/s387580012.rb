a,v = gets.strip.split.map(&:to_i)
b,w = gets.strip.split.map(&:to_i)
t = gets.strip.to_i
vw = v - w
if vw > 0 && ( (a - b).abs + vw - 1) / vw <= t
    puts "YES"
else
    puts "NO"
end