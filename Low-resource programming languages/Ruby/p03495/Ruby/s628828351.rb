N,K = gets.chomp.split.map(&:to_i)
as = gets.chomp.split.map(&:to_i).sort
diff = as.uniq.size - K
cnt_same =[]
1.upto(as[-1]) do |i|
  cnt = 0
  cnt = as.count{|a| a == i}
  cnt_same.push(cnt) unless cnt == 0
end
cnt_same.sort!
ans = 0
if diff > 0
  diff.times do
    ans += cnt_same.shift
  end
end
puts ans
