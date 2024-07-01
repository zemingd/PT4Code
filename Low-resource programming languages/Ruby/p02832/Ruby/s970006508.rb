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

n = gets_i
alist = gets_i_list

i = 1
ans = []
alist.each do |a|
    if a == i
        ans.push i
        i += 1
    end
end

if ans.empty?
  puts -1
else
  puts n - ans.size
end