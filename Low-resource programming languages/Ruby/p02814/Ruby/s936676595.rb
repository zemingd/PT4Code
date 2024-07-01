class Array
    def lcm
      inject(:lcm)
    end
  
    def gcd
      inject(:gcd)
    end
end
n,m = gets.split(" ")
n = n.to_i,m = m.to_i
a = gets.chomp.split(" ")
a = a.map!(&:to_i).uniq
multi = a.lcm
old_multi_cnt = m/multi
new_multi_cnt = m/(multi/2)
puts new_multi_cnt - old_multi_cnt