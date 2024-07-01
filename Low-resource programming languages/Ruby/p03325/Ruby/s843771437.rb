# int[] -(*3 | /2(at least *1))> max
_ = gets
array = gets.split.map(&:to_i)
puts array.map { |i|
    cnt = 0
    cnt, i = cnt + 1, i / 2 while i % 2 == 0
    cnt
}.inject(:+)