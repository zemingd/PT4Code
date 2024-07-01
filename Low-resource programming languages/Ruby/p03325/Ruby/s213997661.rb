n = gets.to_i
line = gets.chomp.split(' ').map(&:to_i)
cnt = 0
line.each do |i|
  while i % 2 == 0
    i = i/2
    cnt += 1
  end
end
puts cnt