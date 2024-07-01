n = gets.to_i
s = gets.chomp.split("")
intcode = s.map!(&:ord)
addbect = Array.new(s.length, n)

outcode = [intcode, addbect].transpose.map{|a| a.inject(:+)}
outcode.map!{|i| (i-65)%26 +65}
outcode.map!(&:chr)
print(outcode.join(), "\n")