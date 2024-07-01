a=[]
gets.chomp.each_char{|c| a<<c.to_i}
(0..7).each do |i|
  bit=i.to_s(2)
  ops=(0..2).map{|j| bit[j]=='1' ? '+' : '-'}
  str="#{a[0]}#{ops[0]}#{a[1]}#{ops[1]}#{a[2]}#{ops[2]}#{a[3]}"
  if eval(str)==7
    puts "#{str}=7"
    exit
  end
end
