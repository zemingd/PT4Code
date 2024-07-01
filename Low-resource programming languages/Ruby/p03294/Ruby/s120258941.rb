n = gets.to_i
a = gets.split(" ").map{|d|d.to_i}

def func m, a
    a.inject(0){|sum, i| sum += m%i }
end


# 2 <= N < 3000
# 2 <= ai <= 100000

c=1
a.each do |aa|
    c *= aa
end

puts func c-1, a
