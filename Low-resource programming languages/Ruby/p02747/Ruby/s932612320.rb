s=gets.chomp
t="hi"
flag = false
5.times do |i|
    flag = true if s==t*(i+1)
end

puts flag ? "Yes" : "No"