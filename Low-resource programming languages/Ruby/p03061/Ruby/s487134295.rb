#require 'pp'
require 'prime'

n = gets.chomp!.to_i
a_n = gets.chomp!.split(" ").map(&:to_i)

gcd = a_n[0]
a_n.each do |a|
    gcd = gcd.gcd(a)
end

# 入れ替えない場合のgcdの最大
# pp gcd
a_n.map! {|a| a / gcd }

memo = { 1 => n - 1}
a_n.each do |a|
    Prime.prime_division(a).each do |x, _|
        memo[x] ||= 0
        memo[x] += 1
    end
end

#pp memo
puts gcd * memo.select {|k, v| v == n - 1 }.keys.inject(1) {|x, i| x *= i }
