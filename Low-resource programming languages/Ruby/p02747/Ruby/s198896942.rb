def judge(s)
  s.size.times do |i|
    return false unless ((s[i] == 'h') || (s[i] == 'i'))

    if (i % 2) == 0 then
      return false unless s[i] == 'h'
    else
      return false unless s[i] == 'i'
    end
  end

  return true
end
 
s = gets.chomp
unless s.size % 2 == 0 then
  puts 'No'
else
  puts (judge(s) ? 'Yes' : 'No')
end