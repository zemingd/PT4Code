require 'pp'
require 'prime'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, alist = gets_n_and_i_list
total = 0

alist.each do |a|
  if a.even?
    factors = a.prime_division
    total += factors.first[1]
  end
end

puts total