gets
ary = gets.split
new_ary = []
for i in ary do
    new_ary.unshift(i)
end

puts new_ary.join(" ")
