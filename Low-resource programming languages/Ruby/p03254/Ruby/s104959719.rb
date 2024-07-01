N,x = gets.strip.split.map(&:to_i)
data = gets.strip.split.map(&:to_i).sort

if x > data.sum
  puts N - 1
elsif x == data.sum
  puts N
elsif x < data.sum
  cnt = 0
  data.each {|i|
    if i <= x
      cnt += 1
      x = x - i
    end
  }
  puts cnt
end