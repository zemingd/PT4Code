N = gets.to_i
A = gets.split.map(&:to_i)

lgcd = Array.new(N+1,0)
rgcd = Array.new(N+1,0)

# 左側のGCD (L[0]は0)
N.times { |i| lgcd[i+1] = lgcd[i].gcd(A[i]) }
# 右側のGCD (R[N]は0)
N.times.reverse_each { |i| rgcd[i] = rgcd[i+1].gcd(A[i]) }

# 左端からiまでのgcdと,右端からi+1までのgcdのgcdを取る
maxgcd = N.times.map { |i| lgcd[i].gcd(rgcd[i+1]) }.max

puts maxgcd