words = %w[dream dreamer erase eraser]
S = gets.strip
result = 'NO'

words.each_with_index do |word, i|
  next unless S.include? word
  another = (S.split word)[0]
  words.each_with_index do |val, j|
    next if i == j
    if another == val
      result = 'YES'
      break
    end
  end
end

puts result
