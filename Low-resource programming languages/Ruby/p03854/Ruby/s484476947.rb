s = gets.chomp

words  = ['dreamer', 'eraser', 'dream', 'erase']
tmp_s = s.dup

words.permutation(4) do |arr|
  s = tmp_s.dup
  arr.each do |word|
    while s.include?(word)
      s.gsub!(word, '')
    end
  end
  if s == ''
    puts 'YES'
    exit
  end
end

puts 'NO'
