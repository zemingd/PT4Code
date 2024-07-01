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
t, a = gets_i_list
hlist = gets_i_list

t, a = t * 1000, a * 1000

index = 0
min = Float::INFINITY
hlist.each_with_index do |h, i|
  diff = (t - h * 6 - a).abs
  if min >= diff
    index = i
    min = diff
  end
end

puts index + 1