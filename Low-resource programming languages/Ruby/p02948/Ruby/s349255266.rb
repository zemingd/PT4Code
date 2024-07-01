n,m = gets.chomp.split(" ").map(&:to_i)

job = []

for i in 1..n do
    job.push(gets.chomp.split(" ").map(&:to_i))
end
job.sort! {|a,b| (b[1] <=> a[1]).nonzero? || (b[0] <=> a[0])}

sum = 0
for i in 1..m do 
    last = m-i+1
    while ! job.empty?
        tar = job.shift
        if tar[0] <= last
            sum += tar[1]
            break
        end
    end
end

p sum