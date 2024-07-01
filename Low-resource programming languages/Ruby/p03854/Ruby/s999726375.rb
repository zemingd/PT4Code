s = gets.chomp

words = ['dreamerase', 'dreamer', 'eraser', 'dream', 'erase']

words.each do |p|
  s.slice!(p)
  if s == ''
    puts 'YES'
    exit
  end
end

puts 'NO'