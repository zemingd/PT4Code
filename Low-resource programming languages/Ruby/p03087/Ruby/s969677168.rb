num, qnum, = gets.strip.split(' ').map(&:to_i)
str = gets.strip
qnum.times do 
  j, k, = gets.strip.split(' ').map{|i| i.to_i - 1}
  puts str[j..k].scan(/AC/).size
end
