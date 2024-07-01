x,k,d = gets.split(" ").map(&:to_i)

min_steps = x.abs / d
min1 = x - min_steps * d * (x>0 ? 1 : -1)
min2 = min1 + d * (min1>0 ? -1 : 1)

if k < min_steps then
    puts (x - k * d * (x>0 ? 1 : -1)).abs
elsif k == min_steps then
    puts min1.abs
else
    puts (k - min_steps) % 2 == 0 ? min1.abs : min2.abs
end
