n = gets.chomp.to_i

work = []
for i in 1..n do
    work.push(gets.chomp.split(" ").map(&:to_i))
end

work.sort! {|a,b| a[1] <=> b[1]}

possible = true

sum = 0
for i in 1..n do
    sum += work[i-1][0]
    if sum > work[i-1][1]
        possible = false
        break
    end
end

if possible
    puts "Yes"
else
    puts "No"
end