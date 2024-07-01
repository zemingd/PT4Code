s = gets.chomp
t = gets.chomp

s_hash = {}
t_hash = {}
('a'..'z').each do |c|
  s_hash[c] = nil
  t_hash[c] = nil
end

result = true
0.upto(s.length).each do |i|
  cs = s[i]
  ct = t[i]

  if s_hash[cs].nil?
    s_hash[cs] = ct
  else
    if s_hash[cs] != ct
      result = false
      break
    end
  end
  if t_hash[ct].nil?
    t_hash[ct] = cs
  else
    if t_hash[ct] != cs
      result = false
      break
    end
  end
end
puts result ? 'Yes' : 'No'
