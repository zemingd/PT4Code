n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
abs_min = 1 << 40
minus_count = 0
is_zero = false
a.each do |i|
    minus_count += 1 if i < 0
    is_zero = true if i == 0
    element_abs = i.abs
    ans += element_abs
    abs_min = abs_min > element_abs ? element_abs : abs_min
end

if minus_count % 2 != 0 && !is_zero then
    ans -= abs_min * 2
end
puts ans