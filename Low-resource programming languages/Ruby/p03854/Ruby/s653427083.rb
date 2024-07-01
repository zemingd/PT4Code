s = gets.chomp

while !s.empty? do
  if word = s.match(/(dreamer|dream|eraser|erase)\z/)
    s[-word.to_s.size, word.to_s.size] = ""
  else
    puts 'NO'
    exit
  end
end

puts 'YES'
