H,W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp }

failed = false
H.times do |i|
  W.times do |j|
    # #だったら上下左右をチェック
    u,d,l,r = false
    if S[i][j] == '#'
      u = true if i != 0 && S[i-1][j] == '#'
      d = true if i != H-1 && S[i+1][j] == '#'
      l = true if j != 0 && S[i][j-1] == '#'
      r = true if j != W-1 && S[i][j+1] == '#'

      # 上下左右全部が.だったら失敗
      unless u || d || l || r
        failed = true
        break
      end
    end
    break if failed
  end
  break if failed
end

if failed
  puts 'No'
else
  puts 'Yes'
end