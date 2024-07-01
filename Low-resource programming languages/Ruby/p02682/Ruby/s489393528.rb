a,b,c,k = gets.chomp.split.map(&:to_i)

cnt = 0
cnt = a
cnt += (k - a - b) * -1 if (k - a - b) > 0
cnt = 0 if cnt <= 0
puts cnt