N, Y = gets.split.map(&:to_i)
puts "-1 -1 -1" if Y % 1000 != 0
(0..N).each do |i|
  (0..(N - i)).each do |j|
    (0..(N - i - j)).each do |k|
      if 10000 * k + 5000 * j + 1000 * i == Y 
        return puts "#{k} #{j} #{i}"
      end
    end
  end
end
puts "-1 -1 -1"