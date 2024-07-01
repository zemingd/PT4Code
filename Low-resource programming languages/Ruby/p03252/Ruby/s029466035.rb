S = gets.chomp.chars
T = gets.chomp.chars

table = {}
T.each.with_index do |ch, i|
  s_ch = S[i]
  table[ch] = s_ch unless table[ch]
  if table[ch] != s_ch
    puts 'No'
    exit 0
  end
end
puts 'Yes'
