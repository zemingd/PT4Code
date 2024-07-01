s = gets.chomp
s.slice!("eraser")
s.slice!("erase")
s.slice!("dreamer")
s.slice!("dream")

if s.empty?
  puts 'YES'
else
  puts 'NO'
end