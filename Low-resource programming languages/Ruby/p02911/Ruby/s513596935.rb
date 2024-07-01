# coding: utf-8
N, K, Q = gets.split.map {|e| e.to_i}
A = []
Q.times do |_|
  A <<  gets.to_i
end
p A
ans = 0

# 最初のポイント計算
init_p = K - Q
points = Array.new(N,init_p)

# 正解者のポイントを+1していく
A.each do |i|
  points[i-1] += 1
end

points.each do |e|
  if e > 0
    puts "Yes"
  else
    puts "No"
  end
end


