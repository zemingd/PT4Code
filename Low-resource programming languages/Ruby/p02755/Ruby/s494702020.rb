a, b = gets.chomp.split(' ').map(&:to_i)

i = 1
loop do
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    puts i
    exit
  end
  i+=1
end
puts -1