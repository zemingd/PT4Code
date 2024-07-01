st=gets.split.map{|i|i.to_s}
a,b=gets.split.map &:to_i
u=gets.chomp
puts st[0]===u ? "#{a-1} #{b}" : "#{a} #{b-1}"
