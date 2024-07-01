def max(a, b)
  a > b ? a : b
end

N, W = gets.chomp.split.map(&:to_i)
dp = Array.new(W + 1) { -1 }
dp[0] = 0
idxes = [0]
N.times do
  wi, vi = gets.chomp.split.map(&:to_i)

  nidxes = []
  idxes.each do |i|
    ni = i + wi
    next if ni > W

    dp[ni] = max(dp[ni], dp[i] + vi)
    nidxes << ni
  end
  idxes = (nidxes + idxes).uniq.sort.reverse

  # puts "dp = #{dp}"
  # puts "idxes = #{idxes}"
end

puts dp.max