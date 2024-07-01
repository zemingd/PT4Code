n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
book = Hash.new(0)
a.each do |x|
  book[x] += 1
end
ball = book.values.sort!
puts ball[0...(ball.size - k)].inject(:+) || 0