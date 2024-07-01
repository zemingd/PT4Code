x, y = gets.split
if x.to_i(16)>y.to_i(16)
  puts ">"
elsif x.to_i(16)==y.to_i(16)
  puts "="
else
  puts "<"
end