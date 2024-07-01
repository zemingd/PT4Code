n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

if n == 1 then
    puts a[0]
    exit
end

ans = [a[0]]

if n % 2 == 0 then
    1.upto(n-1) do |i|
        if i % 2 == 0 then
            ans.push(a[i])
        else
            ans.unshift(a[i])
        end
    end
else
    1.upto(n-1) do |i|
        if i % 2 == 0 then
            ans.unshift(a[i])
        else
            ans.push(a[i])
        end
    end
end

puts ans.join(" ")