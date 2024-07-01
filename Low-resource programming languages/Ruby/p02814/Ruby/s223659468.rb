n, m = gets.split.map(&:to_i)
lists = gets.split.map(&:to_i).uniq.sort.reverse
lcm = lists.inject(:lcm)
p lcm/lists.inject(:gcd)%2*(m+lcm/2)/lcm
# if (lcm / 2) % 2 == 0
#   puts 0
# else
#   puts 0 if lcm / 2 > m
#   ans = (m - lcm / 2) / lcm + 1
#   puts ans
# end
