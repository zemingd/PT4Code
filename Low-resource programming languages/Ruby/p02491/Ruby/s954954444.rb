nums = gets.chomp.split(" ")
a = nums[0].to_f
b = nums[1].to_f
d = a + b
r = a % d
f = a / b
printf "%d %d %.5f\n", d.to_i, r.to_i, f