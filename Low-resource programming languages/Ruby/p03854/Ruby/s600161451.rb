s = gets.chomp
words = %w(dream dreamer erase eraser)

loop do
  prev = s.dup
  words.each do |w|
    if s.end_with?(w)
      s[-w.size, 10] = ''
    end
  end
  if prev == s
    puts 'NO'
    exit
  end
  break if s == ''
end

puts 'YES'
