x = gets.to_i
n = x / 11 * 2
m = x % 11
if m > 6
    n += 2
elsif m > 0
    n += 1
end
puts n
