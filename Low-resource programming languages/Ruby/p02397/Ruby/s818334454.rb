loop do
  a = gets.split.map(&:to_i)
  break if a.max.zero?

  puts a.sort.join(' ')
end


