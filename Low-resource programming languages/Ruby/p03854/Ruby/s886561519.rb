s = gets.chomp

loop do
  if s[-5..-1] == 'dream' || s[-5..-1] == 'erase'
    s.slice!(-5..-1)
  elsif s[-6..-1] == 'eraser'
    s.slice!(-6..-1)
  elsif s[-7..-1] == 'dreamer'
    s.slice!(-7..-1)
  else
    puts 'No'
    exit
  end
  if s.empty?
    puts 'Yes'
    exit
  end
end
