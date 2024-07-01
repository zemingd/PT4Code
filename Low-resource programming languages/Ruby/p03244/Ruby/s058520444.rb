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

dpp even_h
dpp odd_h

if max_even[0] != max_odd[0]
  puts N - max_even[1] - max_odd[1]
else
  me = max_even
  mo = max_odd
  even_h.delete(me[0])
  odd_h.delete(mo[0])
  max_even = even_h.max{|x, y| x[1] <=> y[1]}
  max_odd  = odd_h.max{|x, y| x[1] <=> y[1]}

  dpp max_even
  dpp max_odd

  if max_even.nil? && max_odd.nil?
    puts N/2
  elsif max_even.nil?
    puts N - me[1] - max_odd[1]
  elsif max_odd.nil?
    pp [N, max_even[1], mo[1]]
    puts N - max_even[1] - mo[1]
  else
    puts [N - me[1] - max_odd[1], N - max_even[1] - mo[1]].min
  end
end
