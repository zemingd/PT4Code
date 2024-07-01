N = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
fact = 1
while a.size > 0
fact *= 2
a.select!{|num| num %fact  == 0}
ans += a.size
end
puts ans