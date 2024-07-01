=begin
1, 受け取った数値を配列にし、多重ループして i * jを求める
2, 求めたi*jをans に足して出力
* i または j　が 0 だった場合はスキップする
=end

gets
num_i = gets.split.map(&:to_i)
num_j = num_i.map(&:to_i)
ans = 0

num_i.each{|i|
  if i == 0 || i.nil? then next end
  num_j.shift()
  num_j.each{|j|
    if j == 0 || j.nil? then next end
    ans += i * j
  }
}

puts ans