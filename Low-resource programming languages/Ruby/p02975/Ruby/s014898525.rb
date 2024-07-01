require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

ua_list = a_list.uniq.sort
if ua_list.size == 1 && ua_list.first == 0
  puts "Yes"
elsif ua_list.size == 2
  x0, x1 = ua_list
  if x0 == 0 && N % 3 == 0
    a_list.count(x0) == 2*N/3 &&
    a_list.count(x1) == N/3
    puts "Yes"
  end
elsif ua_list.size == 3
  x0, x1, x2 = ua_list
  if x0 ^ x1 ^ x2 == 0 && N % 3 == 0 &&
    a_list.count(x0) == N/3 &&
    a_list.count(x1) == N/3
    puts "Yes"
  end
else
  puts "No"
end
