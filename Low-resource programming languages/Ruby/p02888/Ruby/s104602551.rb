# 整数の入力
N = gets.to_i
# N = 7
# スペース区切りの整数の入力
d = gets.chop.split.map(&:to_i).sort
# d = [218, 786, 704, 233, 645, 728, 389].sort
count = 0

for i in 0..N-1
  for j in i+1..N-1
    for k in j+1..N-1
      if d[k] < d[i] + d[j]
        count += 1
      end
    end
  end
end

puts count
