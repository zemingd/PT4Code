s = gets.chomp.chars
t = gets.chomp.chars
t.delete_at(-1)

if s === t
  puts 'Yes'
else
  puts 'No'
end
