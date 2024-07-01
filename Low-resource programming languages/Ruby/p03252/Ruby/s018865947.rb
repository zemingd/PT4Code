s = gets.chomp.split('')
t = gets.chomp.split('')
hs = {}
ht = {}
s.size.times do |i|
  if hs[s[i]]
    if hs[s[i]] != t[i]
      puts 'No'
      exit
    end
  elsif ht[t[i]]
    if ht[t[i]] != s[i]
      puts 'No'
      exit
    end
  else
    hs[s[i]] = t[i]
    ht[t[i]] = s[i]
  end
end
puts 'Yes'
