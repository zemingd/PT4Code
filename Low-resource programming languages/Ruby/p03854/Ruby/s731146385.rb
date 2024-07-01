s = gets.chomp

words = ['dreamerase', 'dreamer', 'eraser', 'dream', 'erase']

bool = true
previous = ''

while bool do
  bool = false if s == previous
  previous = s

  words.each do |p|
    s.slice!(p)
    if s == ''
      puts 'YES'
      exit
    end
  end
end

puts 'NO'