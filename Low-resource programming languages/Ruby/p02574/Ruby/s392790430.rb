require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)

exist = Array.new(1000000)
g = 0
f = true

a.each do |e|
    if f
        e.prime_division.each do |k,_|
            if exist[k]
                f = false
                break
            else
                exist[k] = true
            end
        end
    end
    g = g.gcd(e)
end

if f
    puts "pairwise coprime"
elsif g == 1
    puts "setwise coprime"
else
    puts "not coprime"
end
