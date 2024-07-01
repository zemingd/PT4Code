s = gets.split

words = ['dream', 'dreamer', 'erase', 'eraser']

until s.empty? do 
  reduced = false
  words.map do |w|
    if s[-w.size, w.size] == w
      s = s[0..-w.size-1]
      reduced = true
      break
    end
  end

  unless reduced
    puts 'No'
    exit 0
  end
end

puts 'Yes'