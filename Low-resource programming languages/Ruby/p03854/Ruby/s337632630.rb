n = gets.strip.to_s
until n.empty? do
  next if n.gsub!(/^dreameraser/, '')
  next if  n.gsub!(/^dreamerase/, '')
  next if n.gsub!(/^eraser/, '')
  next if n.gsub!(/^erase/, '')
    if !(n.gsub!(/^dreameraser/, ''))&& !(n.gsub!(/^dreamerase/, ''))
    	next if n.gsub!(/^dreamer/, '')
    end
  next if n.gsub!(/^dream/, '')
  break
end
if n.length == 0
  puts 'YES'
else
  puts 'NO'
end