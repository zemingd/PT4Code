N, L = gets.chomp.split().map(&:to_i)
sum = 0
N.times do |n|
  sum += L + n
end

if L >= 0
  sum -= L
elsif L + N <= 0
  sum -= L + N - 1
end

puts sum