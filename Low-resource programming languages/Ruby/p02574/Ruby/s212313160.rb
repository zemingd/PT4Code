require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i)

exist = {}
gcd = a[0]
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
    gcd = gcd.gcd(e)
end

if f
    puts "pairwise coprime"
elsif gcd == 1
    puts "setwise coprime"
else
    puts "not coprime"
end