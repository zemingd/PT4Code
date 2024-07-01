s = gets.chomp
s.slice!("eraser")
s.slice!("dreamer")
s.slice!("dream")
s.slice!("erase")


if s.empty?
  puts 'YES'
else
  puts 'NO'
end