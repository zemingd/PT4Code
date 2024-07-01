n = gets.to_i
as = gets.split.map(&:to_i).sort

as = as.chunk_while {|i, j| i == j}.reject {|ary| ary.size >= 2}.flatten

max = as.last || 0
dp = Array.new(max + 1, true)

as.each do |a|
  i = a * 2
  while i <= max
    dp[i] = false
    i += a
  end
end

puts as.count {|a| dp[a]}