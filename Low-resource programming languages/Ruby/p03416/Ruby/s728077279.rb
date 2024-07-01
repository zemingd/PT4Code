a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0

(b-a+1).times do |i|
    s = (a+i).to_s
    rs = s.reverse
    ans += 1 if s == rs
end

puts ans