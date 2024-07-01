n = gets.strip.to_s
(0..26000).each do |i|
next if n.gsub!(/^dreameraser/, '')

next if  n.gsub!(/^dreamerase/, '')
next if n.gsub!(/^eraser/, '')

next if n.gsub!(/^erase/, '')
if !(n.gsub!(/^dreameraser/, ''))&& !(n.gsub!(/^dreamerase/, ''))
next if n.gsub!(/^dreamer/, '')
end

  next if n.gsub!(/^dream/, '')

end
if n.length == 0
  puts 'YES'
else
  puts 'NO'
end