n = gets.to_i
ls = gets.split.map(&:to_i).sort

ans = 0
# ls.combination(3) do |(a, b, c)|
#   if a < b + c && b < a + c && c < a + b
#     print '*'; pp [a, b, c]
#     ans += 1
#   else
#     print ' '; pp [a, b, c]
#   end
# end

ls.combination(2) do |(a, b)|
  ans += ls.reject {|l| l <= b}.select { |l| l < a + b }.size
end

puts ans
