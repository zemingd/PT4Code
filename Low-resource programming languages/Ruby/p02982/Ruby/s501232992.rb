require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
n, d = gets_i_list

combi = (0...n).to_a.combination(2).to_a

xlist = []
n.times do
  xlist.push gets_i_list
end

count = 0
combi.each do |i, j|
  ans = 0
  d.times do |k|
    ans += (xlist[i][k] - xlist[j][k]) ** 2
  end
  ans = ans ** 0.5
  if ans.to_i == ans.ceil
    count += 1
  end
end

puts count