s = gets.chomp
t = gets.chomp
cs = []
if s.length != t.length
  puts 'No'
else
  if s == t
    puts 'Yes'
    exit
  end
  for i in 0...s.length do
    add = true
    cs.each do |c|
      if (c[0] == t[i] && c[1] == s[i]) || (c[0] == s[i] && c[1] == t[i])
        add = false
      elsif s[i] == c[1] || t[i] == c[0]
        puts 'No'
        exit
      end
    end
    cs << [t[i], s[i]] if add
  end
  puts 'Yes'
end