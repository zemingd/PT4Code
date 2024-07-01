def transmit(s, c1, c2, i)
  res = ""
  for c in 0...s.length do
    if s[c] == c1
      res += c2
      return nil if c < i
    elsif s[c] == c2
      res += c1
      return nil if c < i
    else
      res += s[c]
    end
  end
  res
end

s = gets.chomp
t = gets.chomp
if s.length != t.length
  puts 'No'
else
  if s == t
    puts 'Yes'
    exit
  end
  for i in 0...s.length do
    if s[i] != t[i]
      s = transmit(s, s[i], t[i], i)
      if s.nil?
        puts 'No'
        exit
      end
    end
  end
  puts 'Yes' if s == t
  puts 'No' unless s == t
end