start_num,end_num, div1, div2 =  gets.split(' ').map{|x| x.to_i }
#puts (start_num..end_num).to_a.count{|x| x % div1 != 0 && x % div2 != 0}
div1_wari = end_num / div1 - (start_num - 1) / div1
div2_wari = end_num / div2 - (start_num - 1) / div2
lcm = div1.lcm(div2)
lcm_wari = end_num / lcm - (start_num - 1) / lcm
puts (end_num - start_num + 1) - (div1_wari + div2_wari - lcm_wari)
