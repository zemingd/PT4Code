count = gets.to_i
strs = Hash.new(0)
count.times do
    strs[gets.chomp] += 1
end
strs = strs.sort_by{ | k, v | v }.reverse
max = strs[0][1]
strs.each do |str|
  if  max == str[1]
    print(str[0] + "\r\n") 
  end
end