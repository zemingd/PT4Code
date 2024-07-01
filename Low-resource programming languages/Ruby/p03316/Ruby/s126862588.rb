require 'pp'

n = gets.chomp!.to_i
a = n
s_n = 0
while a != 0
    s_n += a % 10
    a /= 10
end

puts n % s_n == 0 ? "Yes" : "No"
