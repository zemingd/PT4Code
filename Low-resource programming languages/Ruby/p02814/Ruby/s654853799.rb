require 'pp'

n, m = gets.split.map(&:to_i)
a_n = gets.split.map(&:to_i)

lcm = a_n.inject(1) {|ans, n| ans = ans.lcm(n / 2) }

judge = true
a_n.each do |a|
    x = lcm / (a / 2)
    if x % 2 == 0
        judge = false
    end
end

if judge
    puts m / lcm - m / (lcm * 2)
else
    puts 0
end
