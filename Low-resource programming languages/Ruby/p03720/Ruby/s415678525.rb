require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, m = gets_i_list
alist, blist = [],[]

ans = [0] * (n+1)

m.times do
  a, b = gets_i_list
  ans[a] = ans[a].to_i + 1
  ans[b] = ans[b].to_i + 1
end

1.upto(n+1) do |i|
  puts ans[i]
end