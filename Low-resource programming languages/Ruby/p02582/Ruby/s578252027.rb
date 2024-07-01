s = gets.chomp
cnt = s.chars.count { |e| e == 'R' }

if s[1] == 'R'
  puts cnt
else
  if s == 'SSS'
    puts 0
  else
    puts 1
  end
end
