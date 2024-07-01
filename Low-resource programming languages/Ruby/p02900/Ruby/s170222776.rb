require "prime"

a, b = gets.split.map(&:to_i)

aa = Prime.prime_division(a)
bb = Prime.prime_division(b)

cnt = 0
aa.each do |x|
    bb.each do |y|
       cnt += 1 if x[0] == y[0] 
    end
end

puts cnt+1
