N = gets.to_i
S = gets.chomp

msg = ""
S.each_char do |c|
  ord = c.ord + N
  ord += 6 if ord >= 91
  msg += ord.chr
end

puts msg.upcase
