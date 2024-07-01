#require 'pp'

n, m, k = gets.split.map(&:to_i)
a_n = gets.split.map(&:to_i)
b_n = gets.split.map(&:to_i)

sum_a = Array.new(n)
sum_b = Array.new(m)

sum_a[0] = a_n[0]
1.upto(n-1) do |i|
    sum_a[i] = sum_a[i-1] + a_n[i]
end

sum_b[0] = b_n[0]
1.upto(m-1) do |i|
    sum_b[i] = sum_b[i-1] + b_n[i]
end

sum_a.delete_if {|x| x > k }
sum_b.delete_if{|y| y > k}

#pp sum_a
#pp sum_b

max = [sum_a.length, sum_b.length].max

a = 0
b = sum_b.length - 1
while b >= 0 && a < sum_a.length
    #pp "==="
    #pp a
    #p b
    x = sum_a[a] + sum_b[b] 
    if x > k
        b -= 1
    else
        a += 1
    end
end

t1 =  a + 1 + b

a = sum_a.length - 1
b = 0
while a >= 0 && b < sum_b.length
    x = sum_a[a] + sum_b[b] 
    if x > k
        a -= 1
    else
        b += 1
    end
end

t2 = a + b + 1

puts [t1, t2, max].max 
