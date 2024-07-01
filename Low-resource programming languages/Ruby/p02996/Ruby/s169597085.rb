n = gets.chomp.to_i
ary = []
n.times do
    ary << gets.chomp.split.map(&:to_i)
end
ary.sort! { |a,b| b[1] <=> a[1]}
flag = false
now_at = ary[0][1]
n.times do |i|
    now_at = [now_at, ary[i][1]].min
    # p now_at
    now_at -= ary[i][0]
    if now_at < 0
        flag = true
        break
    end
end

if flag
    puts "No"
else
    puts "Yes"
end