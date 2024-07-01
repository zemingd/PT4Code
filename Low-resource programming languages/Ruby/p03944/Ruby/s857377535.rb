W,H,N = gets.split.map(&:to_i)
x,y,a = N.times.map { gets.split.map(&:to_i) }.transpose

# 初期状態の長方形
A = H.times.map { '0' * W }

N.times do |i|
  case a[i]
  when 1
    H.times do |n|
      (0...x[i]).each { |j| A[n][j] = '1' }
    end
  when 2
    H.times do |n|
      ((x[i])..(W-1)).each { |j| A[n][j] = '1' }
    end
  when 3
    (y[i]).times { |j| A[j] = '1' * W }
  when 4
    ((y[i])..H).each { |j| A[j] = '1' * W }
  end
end

# 0の数を足し合わせる
p H.times.map { |i| A[i].count('0') }.inject(:+)