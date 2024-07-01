
def f(a, m)
    a.inject(0){ |s,a| s + m % a }
end

gets
a = gets.split(' ').map{|x| x.to_i}
lcm = a.inject(:lcm)
puts f(a, lcm - 1)
