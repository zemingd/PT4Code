input = readlines()

meta = input.shift.chomp.split("\s").map{|x| x.to_i}

a_list = input.shift.chomp.split("\s").map{|x| x.to_i}
b_list = input.shift.chomp.split("\s").map{|x| x.to_i}

a_total = meta[0]
b_total = meta[1]
limit = meta[2]

b_hash = {}
b_hash[0] = 0
tmp = 0
b_list.each_with_index do |min, i|
  tmp += min
  break if tmp > limit
  b_hash[tmp] = i + 1
end

max = 0
a_min = 0
(0..a_list.length).each_with_index do |min, a_cnt|
  min = a_cnt == 0 ? 0 : a_list[a_cnt - 1]
  break if min > limit
  a_min += min
  remain = limit - a_min
  b_found = nil
  while(remain > 0 && b_found.nil?)
    b_found = b_hash[remain]
    remain -= 1
  end
  b_cnt = b_found.nil? ? 0 : b_found
  max = a_cnt + b_cnt if max < a_cnt + b_cnt
end

puts max
