n = gets.to_i
bosses = gets.split.map(&:to_i)

ans = Array.new(n+1,0) # 0はダミー
bosses.each do |boss|
  ans[boss] += 1
end

ans.shift # ダミーを削除
ans.each do |i|
  puts i
end
