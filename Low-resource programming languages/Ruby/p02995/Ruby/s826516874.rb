a, b, c, d = gets.chomp.split.map(&:to_i)

cnt = 0
(a..b).each do |n|
    cnt = cnt + 1 if n % c != 0 && n % d != 0
end

puts cnt
