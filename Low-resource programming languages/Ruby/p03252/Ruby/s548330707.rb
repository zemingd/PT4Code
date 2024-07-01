S = gets.chomp
T = gets.chomp

t_table = {}
s_table = {}

S.chars.each_with_index do |c, i|
  if t_table[c] && t_table[c] != T[i] || s_table[T[i]] && s_table[T[i]] != c
    puts 'No'
    exit
  end
  t_table[c] = T[i]
  s_table[T[i]] = c
end

puts 'Yes'
