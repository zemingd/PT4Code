N = gets.to_i
S = gets.chomp.chars.map &:ord

S.map! do |a|
  a -= 65
  a += N
  a %= 26
  a += 65
  a.chr
end

puts S.join