n = gets.to_i
ary = []
while a = gets do
    ary.push(a.to_s)
end

result = "Yes"

ary.length.times do |i|
    if ary[i].to_s[0] != ary[i+1].to_s[-1]
        result = "No"
    end
end

if ary.uniq.length != ary.length
    result = "No"
end

puts result