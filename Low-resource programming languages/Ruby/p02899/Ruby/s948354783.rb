N = gets.to_i
A = gets.chomp.split.map(&:to_i)

# 値が小さいインデックスを入れる
# インデックス+1を出力
tmp=0
B=Array.new(A.length)
A.each_index do |i|
  # キーが(揃った人数-1)、値が出席番号
  B[A[i]-1]=i+1
end

puts B.join(" ")