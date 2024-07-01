n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_s)
ary_x = (1..n).to_a
ary_cnt = []
sum = 0
memory = "a"

n.times do |i|
  memory = ary[i]
  ary.delete_at(i)
  ary_cnt = ary.group_by(&:itself).map{|k, v| [k, v.count]}.sort_by{|k,n| -n}
  ary_cnt.each do |x|
    sum += ary_x[0..(x[1]-1)].permutation(2).size 
  end
  puts sum / 2
  ary.insert(i, memory)
  sum = 0
end
