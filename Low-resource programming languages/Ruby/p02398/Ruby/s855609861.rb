a,b,c = gets.split.map(&:to_i)

cnt = 0

for i in a..b do

  cnt += 1 if c%i == 0

end 

puts cnt
