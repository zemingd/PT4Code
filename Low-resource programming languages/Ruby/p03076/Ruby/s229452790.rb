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


rest_sum = 0

rest_arr = [
10-a.last.to_i,
10-b.last.to_i,
10-c.last.to_i,
10-d.last.to_i,
10-e.last.to_i,
]

rest_arr.delete(10)
rest_arr.sort!
rest_sum += rest_arr[-1]
rest_arr.delete_at(-1)

rest_sum = rest_arr.inject(&:+)


p rest_sum + abcde_sum
