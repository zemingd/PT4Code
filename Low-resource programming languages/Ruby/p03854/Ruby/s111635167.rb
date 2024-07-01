# s = "dreameraser"

s = gets.chomp
given_word = %w(dreamer dream eraser erase)

s.reverse!
given_word.map! do |w|
  w.reverse
end

def remove_word(s, given_word)
  if s == ""
    return "YES"
  end

  if (s =~ /^#{given_word[0]}/) == 0
    s.sub!(/^#{given_word[0]}/, "")
    return remove_word(s, given_word)
  elsif (s =~ /^#{given_word[1]}/) == 0
    s.sub!(/^#{given_word[1]}/, "")
    return remove_word(s, given_word)
  elsif (s =~ /^#{given_word[2]}/) == 0
    s.sub!(/^#{given_word[2]}/, "")
    return remove_word(s, given_word)
  elsif (s =~ /^#{given_word[3]}/) == 0
    s.sub!(/^#{given_word[3]}/, "")
    return remove_word(s, given_word)
  end

  return "NO"
end

puts remove_word(s, given_word)
