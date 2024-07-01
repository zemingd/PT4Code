input = readlines()

meta = input.shift.chomp.split("\s").map{|x| x.to_i}

a_list = input.shift.chomp.split("\s").map{|x| x.to_i}
b_list = input.shift.chomp.split("\s").map{|x| x.to_i}

limit = meta[2]

max_cnt = 0
a_min = 0
(0..a_list.length).each do |a_cnt|
  a_min += a_cnt == 0 ? 0 : a_list[a_cnt - 1]
  b_min = 0
  (0..b_list.length).each do |b_cnt|
    b_min += b_cnt == 0 ? 0 : b_list[b_cnt - 1]
    break if a_min + b_min > limit
    if max_cnt < a_cnt + b_cnt
      max_cnt = a_cnt + b_cnt
    end
  end
end

puts max_cnt
