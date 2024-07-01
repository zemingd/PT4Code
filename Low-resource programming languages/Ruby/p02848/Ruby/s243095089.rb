n = gets.strip.to_i
s = gets.strip.split("")

trans_s = s.map{|str| 
                trans = str.ord + n
                trans -= 26 if trans > 90
                trans.chr
                }.join
puts trans_s
