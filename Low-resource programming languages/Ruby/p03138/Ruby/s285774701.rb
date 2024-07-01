n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a2 = a.map{|x| x.to_s(2)}
k2 = k.to_s(2)

def f(x,a)
    a.map{|e|x^e}.reduce(:+)
end

x = ""
k2.size.times do |i|
    acc = 0
    n.times do |j|
         acc += (a2[j][i] || "0").to_i
    end
    if acc <= n/2
        x << "1"
    else
        x << "0"                                                                     
    end
end
puts f(x.reverse.to_i(2), a)
