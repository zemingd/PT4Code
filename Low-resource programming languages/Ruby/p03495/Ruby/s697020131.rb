z = gets.chomp
n = z.split(' ')[0].to_i
k = z.split(' ')[1].to_i

x = gets.chomp
a = Array.new
a = x.split(' ')

b = a.group_by{|an| an}
c = b.sort{|(key1, val1), (key2, val2)| val2.length <=> val1.length}
if c.length <= k
    puts 0
    return
end

tmp = 0

for i in 0..k-1
    tmp += c[i][1].length
end

puts n - tmp