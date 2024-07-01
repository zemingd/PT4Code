# N
# A1 AN
# k番目のボールを取り除いたN-1個の中から書かれている数字が同じボールを選べる数を出力(1つずつ)
N = gets.to_i
A = gets.split.map(&:to_i)
H = Hash.new(0)
A.each do |i|
  H[i] += 1
end
sum = 0
H.each do |k, v|
  sum += v * (v - 1) / 2
end
A.each do |i|
  puts sum - (H[i] * (H[i] - 1)) / 2 + ((H[i] - 1) * (H[i] - 2)) / 2
end