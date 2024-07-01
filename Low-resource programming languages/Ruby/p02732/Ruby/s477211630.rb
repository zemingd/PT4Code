n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
ary_flag = Array.new(ary.max + 1, 0)
ary_clu = Array.new(ary.max + 1, 0)
ary_clu_1 = Array.new(ary.max + 1, 0)
ary_sort = ary.group_by(&:itself).map{|k, v| [k, v.count]}.sort_by{|k,n| -n}

ary_sort.each do |x|
  if ary_flag[x[0]] == 0
    ary_flag[x[0]] = 1
    ary_clu[x[0]] = (1..x[1]).to_a.combination(2).size
    ary_clu_1[x[0]] = (1..(x[1] - 1)).to_a.combination(2).size
  end
end

sum = ary_clu.inject(:+)

ary.each do |x|
  puts sum - ary_clu[x] + ary_clu_1[x]
end
