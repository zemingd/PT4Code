require 'pp'

# sumの追加
class Array
  define_method(:sum){self.inject(:+)} unless method_defined?(:sum)
end
# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end
# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.chars
end

def count_combi(n, k)
  k = n - k if 2 * k > n
  return 1 if k == 0
  ((n - k + 1)..n).inject(&:*) / ((1..k).inject(&:*))
end

N = gets_i
count_hash = Hash.new(0)
N.times do
  s = gets_nsp_list.sort.join
  count_hash[s] += 1
end
values = count_hash.values - [1]
total = values.map do |c|
  count_combi(c, 2)
end.sum

puts total