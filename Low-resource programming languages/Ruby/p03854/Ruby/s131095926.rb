s = gets.chomp
c = s.size

until c == 0
  if s[c-5, 5] == 'erase' || s[c-5, 5] == 'dream'
    c -= 5
  elsif s[c-6, 6] == 'eraser'
    c -= 6
  elsif s[c-7, 7] == 'dreamer'
    c -= 7
  else
    puts 'NO'
    exit
  end
end

puts 'YES'
