n, m = gets.chomp.split.map(&:to_i)
ans = 0
if n < 2 && m < 2
  puts "0"
  exit
end

ans += (1..n).to_a.combination(2).to_a.length if n >= 2
ans += (1..m).to_a.combination(2).to_a.length if m >= 2
puts ans
