require 'pp'

# n件読み込んだ結果を数値の配列で返却する
def gets_n_iarray
  n = gets.chomp.to_i
  array = []
  n.times do
    array.push(gets.chomp.to_i)
  end
  return n, array
end

N, a_list = gets_n_iarray

# 配列に出現する数値をカウント
# {1=>3, 2=>1, 3=>2}
count_hash = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h
puts count_hash.values.count{|v| v.odd? }
