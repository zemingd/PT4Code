line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
m = line[1]

jobs = []
n.times do
    line = gets.chomp.split(" ").map(&:to_i)
    jobs.push(line)
end

total = 0
for i in 0..(m - 1)
    max = 0
    index = -1
    jobs.each_with_index do |job, ji|
        next if i + job[0] > m
        if job[1] > max
            max = job[1]
            index = ji
        elsif job[1] == max and jobs[index][0] < job[0]
            index = ji
        end
    end
    total += max
    jobs.delete_at(index) if index != -1
end
puts total

