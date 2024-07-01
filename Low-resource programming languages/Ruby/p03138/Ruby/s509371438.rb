N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
bit_len = (10 ** 12).to_s(2).size
bit_count = Array.new(bit_len, 0)
A.each do |a|
  bit = sprintf("%0#{bit_len}b", a).split(//).map(&:to_i)
  bit.each_with_index { |b, i| bit_count[i] += b }
  # p bit
end

# p '--- bit count ---'
# p bit_count

ans = ''
k = sprintf("%0#{bit_len}b", K).split(//).map(&:to_i)
# p '--- k ---'
# p k
less_than_k = false # kより小さい数字になっているか
bit_len.times do |i|
  if bit_count[i] > A.size / 2 # 上からi bit目で1が多い場合
    ans += '0'
    less_than_k = true if k[i] == 1
  else
    if k[i] == 1 || less_than_k
      ans += '1'
    else
      ans += '0'
    end
  end
end

# p ans.to_i(2)
# p A
puts A.map { |a| ans.to_i(2) ^ a }.inject(:+)
