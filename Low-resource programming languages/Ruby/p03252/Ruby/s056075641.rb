S = gets.chomp.chars
T = gets.chomp.chars

t_to_s = {}
s_to_t = {}
T.each.with_index do |t_ch, i|
  s_ch = S[i]
  t_to_s[t_ch] = s_ch unless t_to_s[t_ch]
  s_to_t[s_ch] = t_ch unless s_to_t[s_ch]
  if t_to_s[t_ch] != s_ch || s_to_t[s_ch] != t_ch
    puts 'No'
    exit 0
  end
end
puts 'Yes'
