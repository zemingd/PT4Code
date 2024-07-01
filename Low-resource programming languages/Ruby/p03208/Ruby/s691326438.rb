require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

n, k = gets_i_list
hlist = []
n.times do
  hlist.push gets_i
end

hlist.sort!

min = Float::INFINITY

0.upto(n - k) do |i|
  min = [min, hlist[i+k-1] - hlist[i]].min
end

puts min