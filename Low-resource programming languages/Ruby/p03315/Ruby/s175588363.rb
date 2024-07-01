N=gets.to_i

a=N.to_s.split("")

b=0
a.each do |i|
    b += i.to_i
end

puts N%b==0? "YES":"NO"