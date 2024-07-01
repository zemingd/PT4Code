# 整数の入力
N = gets.to_i
# スペース区切りの整数の入力
d = gets.chop.split.map(&:to_i)
count = 0

for i in 0..N-1
  for j in i+1..N-1
    for k in j+1..N-1
      if d[i] < d[j] + d[k] && d[j] < d[k] + d[i] && d[k] < d[i] + d[j]
        count += 1
        puts count
      end
    end
  end
end

puts count