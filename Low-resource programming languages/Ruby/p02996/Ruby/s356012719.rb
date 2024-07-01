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
ab_list = N.times.map do
  gets_i_list
end.sort{|x,y| x[1] <=> y[1]}

total = 0
ab_list.each do |a, b|
  total += a
  if total > b
    puts "No"
    exit
  end
end
puts "Yes"