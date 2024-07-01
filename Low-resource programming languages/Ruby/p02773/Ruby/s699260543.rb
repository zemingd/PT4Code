count = gets.to_i
strs = Hash.new(0)
count.times do
    strs[gets.chomp] += 1
end
strs = strs.sort_by{ | k, v | v }.reverse
dic_strs = Array.new
max = strs[0][1]
strs.each do |str|
  if  max == str[1]
    dic_strs.push(str[0])
  else
    break
  end
end
dic_strs.sort!
puts(dic_strs)
