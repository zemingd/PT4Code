# 毎回計算しても間に合うんじゃね？N<=200000だしソート使っても余裕では

n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)
n.times do |i|
  temp_arr = arr[0, i] + arr[i+1, n]
  temp_arr.sort!
  puts temp_arr[n/2-1]
end