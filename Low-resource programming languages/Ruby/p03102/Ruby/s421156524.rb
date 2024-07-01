# 空白区切の入力値を数値の配列で返す
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

N, M, C = gets_i_list
b = gets_i_list
a_list = []
N.times do
  a_list.push(gets_i_list)
end

count = 0
a_list.each do |a|
  total = C
  (0...M).each do |i|
    total += a[i] * b[i]
  end
  count += 1 if total > 0
end

puts count
