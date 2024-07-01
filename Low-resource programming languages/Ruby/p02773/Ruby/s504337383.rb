n = gets.chomp.to_i
a = []
n.times do |i|
    a[i] = gets.chomp
end
a.sort!
max_s = []
max = 0
cnt = 0
max_cnt = 0
if a.uniq.size == a.size 
  puts a
  exit
end
for i in 0..(n-1)
    if a[i] == a[i+1]
        cnt += 1
    else  
        if cnt > max
            max_s[max_cnt] = a[i]
            max = cnt
        elsif cnt == max && max != 0
            max_cnt += 1
            max_s[max_cnt] = a[i]
        end
        cnt = 0
    end
end
puts max_s