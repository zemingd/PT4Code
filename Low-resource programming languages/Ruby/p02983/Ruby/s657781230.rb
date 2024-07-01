l, r = gets.split(' ').map(&:to_i)

# min =
#   (l...r).to_enum.min do |i, ii|
#     j = i + 1
#     jj = ii + 1
#     (i * j % 2019) <=> (ii * j % 2019)
#   end

result = nil
# (l..r).each do |i|
#   ((i+1)..r).to_enum.map do |j|
#     a = i * j
#     result ||= a
#     result = a if a < result
#   end
# end
(l..r).to_a.permutation(2).uniq.each do |i, j|
  a = (i * j % 2019)
  result ||= a
  result = a if a < result
end

# result = ((-(2019/2))..(2019/2)).to_enum.reject { |a| a <= 0 }.min
# puts (min * (min+1)) % 2019

puts result