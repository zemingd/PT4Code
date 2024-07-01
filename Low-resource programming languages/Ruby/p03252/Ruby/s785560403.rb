s = gets.chomp.split('')
t = gets.chomp.split('')
h = {}
s.size.times do |i|
  if h[s[i]]
    if h[s[i]] != t[i]
      puts 'No'
      exit
    end
  else
    h[s[i]] = t[i]
  end
end
puts 'Yes'
