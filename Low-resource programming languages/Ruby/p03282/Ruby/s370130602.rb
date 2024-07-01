s = gets.chomp.to_s.split('').map(&:to_i)
k = gets.to_i

not_s_index = s.index {|v| v > 1}.to_i
if k <= not_s_index
  puts 1
else
  puts s[not_s_index]
end