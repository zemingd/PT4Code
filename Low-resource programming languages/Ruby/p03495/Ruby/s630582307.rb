lim = gets.chomp.split[1].to_i
ary = gets.chomp.split
uniq_ary = ary.uniq
num_ary = []  #文字の数
uniq_ary.each{|k| num_ary << ary.count(k)}
num_ary.sort!
num_ary = num_ary[0..-(lim+1)]
count = num_ary.sum
puts count
