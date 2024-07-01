N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

# if N == 1
#   a = as[0]
#   puts (M + a / 2) / a
#   exit 0
# end

# odd_count = as.count { |a| (a / 2).odd? }
# is_all_odd_or_even = odd_count == 0 || odd_count == N
# if !is_all_odd_or_even
#   puts 0
#   exit
# end

lcm = 1
as.each do |l|
  lcm = lcm.lcm(l)
  if lcm > M + lcm / 2
    puts 0
    exit 0
  end
end
puts (M + (lcm / 2)) / lcm