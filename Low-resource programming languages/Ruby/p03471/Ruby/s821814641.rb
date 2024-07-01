count, amount =  gets.strip.split.map(&:to_i)
a, b, c = -1, -1, -1

(0..count).each do |i|
  (0..count-i).each do |j|
    if i * 10000 + j * 5000 + (count - i - j) * 1000 == amount
      a, b, c = i, j, count - i -j
    end
  end
end

puts "#{a} #{b} #{c}"
