s = gets.chomp.split('')

max = 0
count = 0
s.each do |c|
  if %w[A C G T].include?(c)
    count += 1
  else
    max = count if max < count
    count = 0
  end
end
puts [max, count].max
