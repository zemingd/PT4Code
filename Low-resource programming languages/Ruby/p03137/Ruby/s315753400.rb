require 'pp'
# sumの追加
class Array
  define_method(:sum){self.inject(:+)} unless method_defined?(:sum)
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M = gets_i_list
x_list = gets_i_list.sort

if N >= M
  puts "0"
  exit
end

if M == 1
  puts x_list.max - x_list.min
  exit
end

distances = x_list.map.with_index do |x, i|
  (x_list[i+1] - x).abs unless x_list[i+1].nil?
end.compact.sort.reverse
puts distances.slice(N-1, M - N + 1).sum

