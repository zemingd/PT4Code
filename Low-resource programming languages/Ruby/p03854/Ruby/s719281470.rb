str = gets.chomp
while str =~ /(dream|dreamer|erase|eraser)$/
  str.gsub!($1, '')
end
puts str.empty? ? 'YES' : 'NO'
