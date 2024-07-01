n = gets.to_i
nums = gets.chomp.split.map(&:to_i)

if n === 2 
    puts nums.max
else
    gcds = []
    n.times do |i|
        gcds << nums.map{|e| nums[i].gcd(e)}.sort[1]
    end
    puts gcds.max
end
