a,b,c = gets.chomp.split.map(&:to_i)
cnt = 0
for n in a..b do
    cnt += 1 if c % n == 0
end
puts cnt