n = gets.chomp.split('')
if n[0..2].uniq.one? || n[1..3].uniq.one?
  puts 'Yes'
else
  puts 'No'
end