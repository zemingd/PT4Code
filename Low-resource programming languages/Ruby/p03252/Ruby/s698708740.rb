s = gets.chomp
t = gets.chomp

s_structure = Array.new(26){[]}
s.chars.each_with_index do |x, index|
  target_index = x.ord - 'a'.ord
  s_structure[target_index] << index
end

t_structure = Array.new(26){[]}
t.chars.each_with_index do |x, index|
  target_index = x.ord - 'a'.ord
  t_structure[target_index] << index
end

n = s.size
n.times do |i|
  s_char_code = s[i].ord - 'a'.ord
  t_char_code = t[i].ord - 'a'.ord
  unless s_structure[s_char_code].size == t_structure[t_char_code].size
    puts 'No'
    exit
  end

  m = s_structure[s_char_code].size
  m.times do |j|
    unless s_structure[s_char_code][j] == t_structure[t_char_code][j]
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
