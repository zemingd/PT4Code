require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b = gets_i_list

count = 0
a.upto(b) do |i|
  before = i.to_s.chars
  after  = before.reverse

  if before.join == after.join
    count += 1
  end
end

puts count