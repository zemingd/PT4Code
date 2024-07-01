n = gets.to_i
ans = 10 ** 6

(n+1).times do |i|
    c = i.to_s(6).chars.inject(0) {|r, v| r + v.to_i}
    c += (n - i).to_s(9).chars.inject(0) {|r, v| r + v.to_i}
    ans = c if ans > c
end

puts ans