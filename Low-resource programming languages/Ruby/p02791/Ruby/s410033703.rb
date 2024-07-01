n = gets.strip.to_i
array = gets.strip.split.map(&:to_i)
r_array = array.reverse
num = 1
sum = 0
array.each do |ar|
  flag = false
  s_array = array.slice(0,num)
  if s_array.bsearch {|x| x > ar}
    p 'a'
    flag = true
  end
  num+=1
  next if flag
  sum+=1
end
  puts sum

