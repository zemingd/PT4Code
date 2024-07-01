s = gets.chomp
n = s.size

ans = 1000
(n-2).times do |i|
    ans = [ans, (s[i..(i+2)].to_i - 753).abs].min
end
p ans