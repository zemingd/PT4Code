n = gets.to_i
as = gets.split.map(&:to_i).sort

max = as.last
dp = Array.new(max + 1, true)

as.each do |a|
  i = a * 2
  while i <= max
    dp[i] = false
    i += a
  end
end

as = as.chunk_while {|i, j| i == j}.reject {|ary| ary.size >= 2}.flatten

puts as.count {|a| dp[a]}