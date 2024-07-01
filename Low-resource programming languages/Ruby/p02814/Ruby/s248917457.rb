class Array
    def lcm
      inject(:lcm)
    end
  
    def gcd
      inject(:gcd)
    end
end
n,m = gets.split(" ")
n = n.to_i
m = m.to_i
a = gets.chomp.split(" ")
a = a.map!(&:to_i)
old_multi = m/(a.lcm)
harf_number = a.map { |n| n/2 }
new_multi = m/(harf_number.lcm)
puts new_multi - old_multi