a,b,c = gets.split.map(&:to_i)

cnt = 0
while a <= b
if c % a == 0
    cnt += 1
end
a += 1
end

puts cnt