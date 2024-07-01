K = gets.to_i
A, B = gets.split(" ").map(&:to_i)
count = 0

for i in (A..B) do
    if i % K == 0
        puts "Yes"
        break
    else
        count += 1
    end
end

if count == B - A + 1
    puts "No"
end
