n = gets.chomp.to_i
d = gets.chomp.split().map(&:to_i)

ans = 0
0.upto(n-1).each do |i|
  (i+1).upto(n-1).each do |j|
    ans += d[i] * d[j]
  end
end

puts ans


