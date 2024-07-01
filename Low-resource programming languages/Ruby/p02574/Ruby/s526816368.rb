require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)

exist = {}
gcd = a[0]
f = true

min0 = Hash.new(0)
min1 = Hash.new(0)

a[0].prime_division.each do |k,v|
    exist[k] = true
    min0[k] = v
end

a[1..-1].each do |e|
    e.prime_division.each do |k,v|
        if f
            exist[k] ? f = false : exist[k] = true
        end

        min1[k] = min0[k] < v ? min0[k] : v
    end

    min0, min1 = min1, min0
    min1.clear
end

if f
    puts "pairwise coprime"
elsif min0.values.all?(0)
    puts "setwise coprime"
else
    puts "not coprime"
end