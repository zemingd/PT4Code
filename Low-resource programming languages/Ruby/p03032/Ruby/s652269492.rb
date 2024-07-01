N, K = gets.chomp.split.map(&:to_i)
v = gets.chomp.split.map(&:to_i)

ans = 0

def max(a, b)
  a > b ? a : b
end

r = [N, K].min

0.upto(K) do |i|
  0.upto(K) do |j|
    m = i + j
    break if m > r
    tmp = (v[0,i] + v[N-j,j]).sort

    # 空な場合は飛ばす
    next if tmp.empty?

    # 和を取る
    tmp_sum = tmp.inject(:+)


    # k-m回まで取り除くことが可能
    len = [(K-m), tmp.size].min

    len.times do |l|
      break if tmp[l] >= 0
      tmp_sum -= tmp[l]
    end

    ans = max(ans, tmp_sum)
  end
end

p ans
