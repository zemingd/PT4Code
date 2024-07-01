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

count_hash = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

p_count_hash = count_hash.map do |k, v|
  p_count = v * (v - 1) /2
  [k, p_count]
end.to_h
p_count_total = p_count_hash.values.inject(:+)

p_count_hash2 = count_hash.map do |k, v|
  if v >= 2
    p_count = (v - 1) * (v - 2) /2
  else
    p_count = 0
  end
  [k, p_count]
end.to_h


a_list.each do |a|
  puts p_count_total - p_count_hash[a] + p_count_hash2[a]
end
