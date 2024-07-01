require 'pp'

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
a_list = gets_i_list

report_list = a_list.inject(Hash.new(0)){|h, e| h.tap{|h| h[e] += 1}}

(1..N).each do |i|
  puts report_list[i].to_i
end
