S = gets.chomp

c = S.size

until c.zero?
  if S[c - 5, 5] == 'erase' || S[c - 5, 5] == 'dream'
    c -= 5
  elsif S[c - 6, 6] == 'eraser'
    c -= 6
  elsif S[c - 7, 7] == 'dreamer'
    c -= 7
  else
    puts 'NO'
    exit
  end
end

puts 'YES'
