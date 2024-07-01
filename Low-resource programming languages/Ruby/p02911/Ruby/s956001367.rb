# N人
# Kポイント
# Q回の正解

init = gets().chomp.split(" ").map(&:to_i)
N = init[0]
K = init[1]
Q = init[2]

points = Array.new(N).map {|v| v = K }
# p "初期値: #{points}"

Q.times do
  answer = gets().chomp.to_i
  
  # 全員マイナスする
  points.map! {|v| v -=1 }

  # 正解者だけ+1
  points[answer-1] += 1

  # p "points: #{points}"
end

points.map! {|v| v > 0 ? p("Yes") : p("No") }