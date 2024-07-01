a, b, c = gets.chomp.split.map(&:to_i)

answer = c-(a-b)

if answer > 0
  puts answer
else
  puts 0
end