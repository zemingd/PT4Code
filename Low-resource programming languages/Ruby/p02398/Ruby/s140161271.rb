a,b,c = gets.split(" ").map(&:to_i)

cnt = 0

(a..b).each(|i| cnt +=1 if c%i == 0)

puts cnt