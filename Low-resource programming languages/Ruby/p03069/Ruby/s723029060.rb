n = gets.to_i
s = gets.chomp
memo = Array.new(n + 1) { Hash.new(0) }

memo[0][:left_black] = 0
1.upto(n) do |i|
  memo[i][:left_black] = memo[i - 1][:left_black]
  memo[i][:left_black] += 1 if s[i - 1] == "#"
end

memo[-1][:right_white] = 0
(n - 1).downto(0) do |i|
  memo[i][:right_white] = memo[i + 1][:right_white]
  memo[i][:right_white] += 1 if s[i] == "."
end

ans = memo.min_by { |m| m[:left_black] + m[:right_white] }
puts ans[:left_black] + ans[:right_white]
