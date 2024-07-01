loop do
  s = gets.chomp
  s != "0" or break
  puts s.chars.map(&:to_i).inject(&:+)
end