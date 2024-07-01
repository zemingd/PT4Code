c = gets.split.map(&:to_i)
3.times do
  c.rotate!
  if c[0] + c[1] == c[2]
    puts "YES"
    exit
  end
end
puts "NO"