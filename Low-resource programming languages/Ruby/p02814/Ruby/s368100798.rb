def two(k)
    
    ans = 0
    while true do
        if k % 2 == 0
            k /= 2
            ans += 1
        else
            return ans
        end
    end
end


n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

b = []
n.times do |i|
    
    t = two(a[i])
    b << t
    
end

# p b
if b.uniq!.size == 1 and b != [0]
    puts m / a.map{|k| k/2 }.inject(:lcm) / 2 + 1
else
    puts 0
end


