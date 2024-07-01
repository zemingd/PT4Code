a,b,c = gets.split.map(&:to_i)

cnt = 0

for i in a..b do
 if c%x == 0 then cnt += 1
end 

puts cnt
