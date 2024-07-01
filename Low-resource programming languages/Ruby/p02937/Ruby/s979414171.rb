s = gets.chomp
t = gets.chomp

i = 0
length = 0
indexes = []

t.each_char do |c|
  if !s.include?(c)
    puts "-1"
    exit
  end

  index = s.index(c, indexes[-1] || 0)
  if index
    length = s.length * i + index + 1
    indexes.push(index)
  else
    i += 1
    index = s.index(c)
    length = s.length * i + index + 1
    indexes.push(index)
  end
end

puts length