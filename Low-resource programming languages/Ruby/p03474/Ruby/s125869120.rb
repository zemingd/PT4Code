def integer_str?(str)
  Integer(str)
  true
rescue ArgumentError
  false
end

a, b = gets.chomp.split.map(&:to_i)
s = gets.chomp
len = s.length

if s[a] == '-' && len == (a + b + 1) && integer_str?(s[0..(a - 1)]) && integer_str?(s[(a + 1)..(a + b)])
  puts 'Yes'
else
  puts 'No'
end