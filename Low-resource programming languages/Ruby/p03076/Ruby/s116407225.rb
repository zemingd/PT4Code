a = gets.chomp.to_s.split("")
b = gets.chomp.to_s.split("")
c = gets.chomp.to_s.split("")
d = gets.chomp.to_s.split("")
e = gets.chomp.to_s.split("")

abcde_arr  = [a,b,c,d,e]
abcde = []

abcde_arr.each do |v|
  abcde << v[0..-1].join.to_i
end

abcde_sum = abcde.inject(&:+)

rest_arr = []

abcde_arr.each do |v|
  rest_arr  << 10-v.last.to_i
end

rest_sum = 0

rest_arr.delete(10)
rest_arr.sort!

rest_sum += rest_arr[-1]
rest_arr.delete_at(-1)

rest_sum = rest_arr.inject(&:+)

p rest_sum + abcde_sum
