start_num,end_num, div1, div2 =  gets.split(' ').map{|x| x.to_i }
#puts (start_num..end_num).to_a.count{|x| x % div1 != 0 && x % div2 != 0}
gap = end_num - start_num
div1_wari = gap / div1
div2_wari = gap / div2
lcm = div1.lcm(div2)
if lcm == div1
  puts gap -  div2_wari
elsif lcm == div2
  puts gap -  div1_wari
else
  lcm_wari = gap / lcm
  puts gap - (div1_wari + div2_wari - lcm_wari)
end
