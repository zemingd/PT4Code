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

N, s_list = gets_n_iarray

total = s_list.inject(:+)

not10x_list = s_list.select do |s|
  s % 10 != 0
end

if total % 10 != 0
  puts total
elsif !not10x_list.empty?
  puts total - not10x_list.min
else
  puts 0
end
