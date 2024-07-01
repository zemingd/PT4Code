def upTime(t)
    ((t/10.0).ceil*10).to_i
end
A = gets.to_i
B = gets.to_i
C = gets.to_i
D = gets.to_i
E = gets.to_i
x = [A,B,C,D,E].select { |a| a%10==0 }
y = [A,B,C,D,E].select { |a| a%10!=0 }
y =y.sort_by{|a| a%10 }.reverse
z = y.pop
t = x.empty? ? 0 : x.inject(:+)
y.each do |a|
    t += upTime a
end
t += z
puts t