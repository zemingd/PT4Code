N = gets.chomp
n = N.to_i
digit_sums = N.chars.map(&:to_i).inject(&:+)

ans = (n % digit_sums).zero ? "Yes" : "No"

puts ans