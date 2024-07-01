# 人数, 初期ライフ, 問題数
n, k, q = gets.chomp.split(' ').map{|s| s.to_i}

score = Array.new(n,0)

for i in 0..q-1 do
  x = gets.chomp.to_i
  score[x-1] += 1
end

for i in 0..n-1 do
  if k - (q - score[i]) <= 0 then
    print "No\n"
  else
    print "Yes\n"
  end
end
