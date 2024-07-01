a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
array = [a, b, c, d, e]

flg = true
if array[0] == array[1] && array[0] == array[2] && array[0] == array[3] && array[0] == array[4]
  flg = false
end

if flg == true
  hash = Hash.new
  array.each_with_index do |v, k|
    if v.to_s[-1].to_i == 0
      next
    else
      hash[k] = v.to_s[-1].to_i
    end
  end
  
  hoge =  Hash[hash.sort_by{|k,v| v }]
  filter_key = hoge.first[0]
  
  last = array[filter_key]
  p last
  array.delete(last)
  array3 = []
  array.each do |v|
    array3 << v.ceil(-1)
  end

  array3.inject(:+) + last
else
  puts array.inject(:+)
end
