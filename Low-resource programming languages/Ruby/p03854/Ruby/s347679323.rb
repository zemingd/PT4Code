n = gets.strip.to_s
26000.times do
  n.gsub!(/^dreameraser/, '')
    n.gsub!(/^dreamerase/, '')
n.gsub!(/^eraser/, '')
n.gsub!(/^erase/, '')
n.gsub!(/^dreamer/, '')
n.gsub!(/^dream/, '')

end
if n.length == 0
  puts 'YES'
else
  puts 'NO'
end
puts n