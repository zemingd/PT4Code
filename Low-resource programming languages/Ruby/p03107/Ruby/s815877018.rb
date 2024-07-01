s = gets.strip.split('')
def eliminate(s)
  return 0 if s.empty?
  i = 0
  deleted = 0
  next_s = []
  while i < s.length
    if s[i+1].nil?
      next_s << s[i]
      break
    elsif s[i] == s[i+1]
      next_s << s[i]
      i += 1
    else
      deleted += 2
      i += 2
    end
  end
  return 0 if s.length == next_s.length
  deleted + eliminate(next_s)
end
puts eliminate(s)
