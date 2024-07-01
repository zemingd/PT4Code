a, b = gets.chomp.split(" ").map(&:to_i)

counter = 0
(1..9).each do |i|
  (0..9).each do |j|
    (0..9).each do |k|
      num = %W(#{i}#{j}#{k}#{j}#{i}).join.to_i
      counter = counter.next if num.between?(a, b)
    end
  end
end

puts counter