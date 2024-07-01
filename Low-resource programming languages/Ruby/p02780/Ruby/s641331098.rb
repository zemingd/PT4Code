# 0番目からn番目までのサイコロを使って出る、すべてのパターンの出目の総和
# a 配列
# n index
def ans(a, n)
  tmp = 0
  if n == 0
    tmp = [*(1..a[n])].sum
  else
    tmp = [*(1..a[n])].sum * a[0..(n-1)].inject { |result, num| result * num }
    tmp += a[n] * ans(a, n-1)
  end

  puts "n = #{n} => tmp: #{tmp}"
  tmp
end


n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

max = 0
pos = 0
for index in 0..(arr.size - k)
  sum = arr[index...(index + k)].sum
  if max < sum
    max = sum 
    pos = index
  end
end

b = arr[pos...(pos + k)]

puts (ans(b, k-1) * 1.0) / b.inject { |result, num| result * num }



