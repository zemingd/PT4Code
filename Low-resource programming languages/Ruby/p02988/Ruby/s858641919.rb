# Your code here!

n = gets.chomp.to_i
ps = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in 0..(n-3)
    if (ps[i] < ps[i+1] && ps[i+1] < ps[i+2]) || (ps[i] > ps[i+1] && ps[i+1] > ps[i+2])
        count +=1
    end
end

puts count