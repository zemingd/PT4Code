list = %w(dream dreamer erase eraser).map{_1.reverse}
s = gets.chomp.reverse
until s.empty?
  is_match = false
  list.each do |word|
    if s.start_with?(word)
      s.delete_prefix!(word)
      is_match = true
    end
  end
  if is_match
    next
  end
  puts 'NO'
  exit
end
puts 'YES'