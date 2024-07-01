a,b = gets.split.map(&:to_i);
n = b - a + 1
cnt = 0

n.times do
    cnt += 1 if a.to_s == (a.to_s).reverse 
    a += 1
end

puts cnt