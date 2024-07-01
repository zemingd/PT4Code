require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
N, a_list = gets_n_and_i_list

even_list = a_list.select.with_index{|e, i| i.even?}
odd_list  = a_list.select.with_index{|e, i| i.odd?}

even_h = even_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h
odd_h  = odd_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h

max_even = even_h.max{|x, y| x[1] <=> y[1]}
max_odd  = odd_h.max{|x, y| x[1] <=> y[1]}

if max_even[0] != max_odd[0]
  puts N - max_even[1] - max_odd[1]
else
  me = max_even[0]
  mo = max_odd[0]
  even_h.delete(me)
  odd_h.delete(mo)
  max_even = even_h.max{|x, y| x[1] <=> y[1]}
  max_odd  = even_h.max{|x, y| x[1] <=> y[1]}
  if max_even.nil? && max_odd.nil?
    puts N/2
  elsif max_even.nil?
    puts N - me + max_odd[1]
  elsif max_odd.nil?
    puts N - max_even[1] + mo
  else
    puts [N - me + max_odd[1], N - max_even[1] + mo].min
  end
end