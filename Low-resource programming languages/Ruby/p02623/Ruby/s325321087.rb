# しゃくとり法でいきます
n, m, k = gets.split.map &:to_i

# AとBの累積和を計算
prev = 0
a = gets.split.map { |s| prev += s.to_i }
prev = 0
b = gets.split.map { |s| prev += s.to_i }

# iはどこまでいける？
i = (a.index { |x| x > k } || n) - 1
x = (i >= 0) ? a[i] : 0

# jはどこまでいける？
j = (b.index { |y| x + y > k } || n) - 1

max_count = i + j + 2

# iを1ずつ減らすと、jはどこまでいける？
i.downto(-1) do |i|
  
  count = i + 1
  x = (i >= 0) ? a[i] : 0
  
  (j+1).upto(m-1) do |_j|
    if x + b[_j] <= k
      j = _j
      break
    end
  end
  
  count += j + 1
  
  STDERR.puts [i, j, count].inspect
  
  max_count = [max_count, count].max

end

p max_count