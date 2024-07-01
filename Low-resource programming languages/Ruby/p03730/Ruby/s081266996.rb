a,b,c=gets.split.map(&:to_i)
b.times do |k|
  x = ((k + 1) * a) % b
  if x == c || (x > 0 && c % x == 0)
    puts :YES
    exit
  end
end
puts :NO