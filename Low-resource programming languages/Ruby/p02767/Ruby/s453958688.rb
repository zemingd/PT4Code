# 入力値を数値で返す
def gets_i
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返す
def gets_i_list
  gets.chomp.split(" ").map(&:to_i)
end

N = gets_i
x_list = gets_i_list.sort

min = (1..x_list.max).map do |i|
  x_list.map do |x|
    (x - i)**2
  end.inject(:+)
end.to_a.min

puts min
