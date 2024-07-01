def judge(s)
  s.size.tiems do |i|
    return false if ((s[i] != 'h') && (s[i] != 'i'))

    return false unless ((i % 2) == 0) && (s[i] == 'h')
    return false unless ((i % 2) == 1) && (s[i] == 'i')
  end

  return true
end

s = gets.chomp
puts (judge(s) ? 'Yes' : 'No')