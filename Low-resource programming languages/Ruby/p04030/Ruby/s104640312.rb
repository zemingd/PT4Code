# Your code here!

str = gets.chomp
ans = ""

for i in 0..str.size-1 do
    c = str[i]
    if c=="B"
        if ans.size>0
            ans.chop!
        end
    else
        ans += c
    end
end

puts ans