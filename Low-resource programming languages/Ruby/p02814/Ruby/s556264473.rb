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
a = a.uniq
kobaisu = a.lcm
old_data = m/kobaisu
harf_number = a.map { |n| n/2 }
new_data = m/(harf_number.lcm)
puts new_data-old_data