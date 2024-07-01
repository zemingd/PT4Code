n = gets.to_i
strs = n.times.map{ gets.chomp.to_s }.sort

if strs.uniq.size == n
  puts strs
  exit
end
if strs.uniq.size == 1
  puts strs[0]
  exit
end

max_str_ary = []
max_num = 1
count_hash = Hash.new(0)
pre_elem = ''
pre_num = 0

strs.append('').each_with_index do |elem, i|
  count_hash[elem] += 1
  if pre_elem != elem
    pre_elem = elem
    cnt = i - pre_num
    pre_num = i
    if cnt > max_num
      max_num = cnt
    end
  end
end
puts count_hash.find_all { |_, v| v == max_num }.to_h.keys