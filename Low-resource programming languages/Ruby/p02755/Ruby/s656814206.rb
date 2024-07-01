require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
a, b = gets_i_list

1.upto(1500) do |i|
  if (i * 0.08).floor == a && (i * 0.1).floor == b
    puts i
    exit
  end
end

puts -1