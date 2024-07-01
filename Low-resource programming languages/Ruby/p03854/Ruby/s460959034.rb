
s = gets.chomp
given_word = %w(dreamer dream eraser erase)

s.reverse!
given_word.map! do |w|
  w.reverse
end

def remove_word(s, s_index, given_word)
  if s_index == s.length
    return "YES"
  end
  s_temp = s[s_index, 7]

  given_word.each do |w|
    if (s_temp =~ /^#{w}/) == 0
      s_index += w.length
      return remove_word(s, s_index, given_word)
    end
  end

  return "NO"
end

s_index = 0
  puts remove_word(s, s_index, given_word)
