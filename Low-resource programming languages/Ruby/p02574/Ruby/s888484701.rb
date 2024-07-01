require 'prime'
require 'set'
N = gets.to_i
A = gets.split.map{|a| Set.new(Prime.prime_division(a.to_i).map{|prime, mag| prime})}

cup = Set.new
hat = nil
pc = true
A.each do |primes|
    if pc && (cup & primes).size > 0
        pc = false
    end
    cup += primes
    hat = hat ? hat & primes : primes
end
sc = (hat.size == 0)

if pc
    puts 'pairwise coprime'
elsif sc
    puts 'setwise coprime'
else
    puts 'not coprime'
end