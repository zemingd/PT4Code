N,x = gets.strip.split.map(&:to_i)
data = gets.strip.split.map(&:to_i).sort

if x > data.inject(:+)
  puts N - 1
elsif x == data.inject(:+)
  puts N
elsif x < data.inject(:+)
  cnt = 0
  data.each {|i|
    if i <= x
      cnt += 1
      x = x - i
    end
  }
  puts cnt
end