require 'prime'
N = gets.to_i
primes = []
N.prime_division.each do |a|
    a[1].times do
        primes << a[0]
    end
end
ret = N
1.upto(primes.size) do |n|
    primes.combination(n).each do |ary|
        a = ary.inject(:*)
        b = primes.inject(:*).div(a) || 1
        ret = [ret, [Math.log10(a).to_i + 1, Math.log10(b).to_i + 1].max].min
    end
end
puts ret