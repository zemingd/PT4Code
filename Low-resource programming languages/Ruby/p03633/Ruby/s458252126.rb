require 'prime'
n = gets.chomp.to_i
c = []
while s = gets
  c.push(s.split.map(&:to_i))
end
a ={}
#p c[2][0]
for i in 0..n-1
    d = []
    d = Prime.prime_division(c[i][0])
    #p d
    #p d[0][1]
    #p a[0]
    for j in 0..d.length-1
        if a[d[j][0]] =""
            a[d[j][0]] =d[j][1]
        elsif a[d[j][0]]<=d[j][1]
            a[d[j][0]] =d[j][1]
        end
    end
end
#p a
cnt = 1
a.each {|i, j|
 cnt *= i**j
}
puts cnt