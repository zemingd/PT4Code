a, b, c = gets.split.map(&:to_i)
cnt = 0

(a..b).each do |n|
    cnt += 1 if c % n ==0 
end

puts cnt
