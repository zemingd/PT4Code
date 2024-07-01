s = gets.chomp

words  = ['dreamer', 'eraser', 'dream', 'erase']

words.permutation(4) do |arr|
  tmp_s = s.dup
  arr.each do |word|
    while tmp_s.include?(word)
      tmp_s.gsub!(word, '')
    end
  end
  if tmp_s == ''
    puts 'YES'
    exit
  end
end

puts 'NO'
