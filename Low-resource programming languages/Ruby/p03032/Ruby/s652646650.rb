# 14 44 0
require 'pp'
n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i).map.with_index{|x,i|[x, i]}

sums = []
0.upto(k) do |i|
  # p [i, k-i] # 左,右
  left  = []
  right = []
  if i != 0
    left = v[0..(i-1)].reverse # 先頭が最後に取った値
  end
  right = v[(n-(k-i))..-1] # 先頭が最後に取った値
  # p left
  # p right
  sorted_sum = (left + right).sort_by{|a|a[0]}
  # p sorted_sum
  # p sorted_sum.map{|x|x[0]}.inject(:+)
  while true
    if left[0] && left[0][0] + sorted_sum[0][0] < 0 && (right[0].nil? || left[0][0] <= right[0][0])
      ls  = left.shift
      sss = sorted_sum.shift
      ldi   = left.index {|x|x[1] == sss[1]}
      rdi_s = right.index{|x|x[1] == sss[1]}
      rdi_l = right.index{|x|x[1] == ls[1] }
      ldi   && left.delete_at(ldi)
      rdi_s && right.delete_at(rdi_s)
      rdi_l && right.delete_at(rdi_l)
    elsif right[0] && right[0][0] + sorted_sum[0][0] < 0 && (left[0].nil? || left[0][0] >= right[0][0])
      rs  =  right.shift
      sss =  sorted_sum.shift
      rdi   = right.index{|x|x[1] == sss[1]}
      ldi_s = left.index {|x|x[1] == sss[1]}
      ldi_r = left.index {|x|x[1] == rs[1] }
      rdi   && right.delete_at(rdi)
      ldi_s && left.delete_at(ldi_s)
      ldi_r && left.delete_at(ldi_r)
    else
      break
    end
    # p left
    # p right
    sorted_sum = (left + right)
    # p sorted_sum
    # p sorted_sum.map{|x|x[0]}.inject(:+)
  end
  sums << sorted_sum.map{|x|x[0]}.inject(:+)
  # puts
end
p sums.map(&:to_i).max
