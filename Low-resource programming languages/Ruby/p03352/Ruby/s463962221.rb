x = gets.to_i
s = [31, 29, 23, 19, 17, 13, 11, 7, 5, 3, 2]
s.each do |i|
  next if x <= i ** 2
  8.times do |j|
    if i ** (9 - j) <= x
      puts i ** (9 - j)
      exit
    end
  end
end
puts 1
