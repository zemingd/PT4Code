# しゃくとり法でいきます
n, m, k = gets.split.map &:to_i

# AとBの累積和を計算
prev = 0
a = [0] + gets.split.map { |s| prev += s.to_i }
prev = 0
b = [0] + gets.split.map { |s| prev += s.to_i }

# iはどこまでいける？
i = a.rindex { |x| x <= k }
x = a[i]

# jはどこまでいける？
j = b.rindex { |y| x + y <= k }

max_count = i + j

# iを1ずつ減らすと、jはどこまでいける？
i.downto(0) do |i|
  
  count = i
  x = (i >= 0) ? a[i] : 0
  
  (j+1).upto(m) do |_j|
    break if x + b[_j] > k
   	j = _j
  end
  
  count += j
  
  #STDERR.puts [i, j, count].inspect
  
  max_count = [max_count, count].max

end

p max_count
