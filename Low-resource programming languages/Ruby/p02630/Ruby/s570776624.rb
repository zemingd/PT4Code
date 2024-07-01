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
# N, M = gets_i_list
# list = gets_i_list

n = gets_i
a_list = gets_i_list
q = gets_i

a_count_h = a_list.sort.tally

total = a_count_h.map do |k, v|
  k * v
end.sum

dpp a_count_h
dpp total

q.times do
  b, c = gets_i_list
  b_count = a_count_h[b].to_i
  c_count = a_count_h[c].to_i

  dpp b_count
  dpp b_count

  total = total + ((c - b) * b_count)

  a_count_h.delete(b)
  a_count_h[c] = c_count + b_count

  puts total
end