N, K = gets.chomp.split.map(&:to_i)
# sort で配列の順番を直す reverse で配列末尾から参照
l = gets.chomp.split.map(&:to_i).sort.reverse

ans = 0

K.times do |i|
  ans += l[i]
end

puts ans