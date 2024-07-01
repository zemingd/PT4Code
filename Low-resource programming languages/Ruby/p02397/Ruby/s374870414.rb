loop do
  a = gets.split.map(&:to_i).sort
  break if a == [0,0]
  puts a.join(' ')
end