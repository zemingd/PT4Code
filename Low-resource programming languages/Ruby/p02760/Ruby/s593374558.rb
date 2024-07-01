bingo = []
ans = false
flag = Array.new(3).map{Array.new(3, false)}
3.times do
    bingo << gets.chomp.split(" ").map(&:to_i)
end
n = gets.chomp.to_i
n.times do
    b = gets.chomp.to_i
    bingo.each_with_index do |arr, i|
        arr.each_with_index do |e, j|
            if b == e
                flag[i][j] = true
            end
        end
    end
end

if flag[0][0] == true && flag[1][1] == true && flag[2][2] == true
    ans = true
end
if flag[0][2] == true && flag[1][1] == true && flag[2][0] == true
    ans = true
end
print flag
flag.each do |i|
    if i.all?{|v| v == true}
        ans = true
    end
end
flag = flag.transpose
flag.each do |i|
    if i.all?{|v| v == true}
        ans = true
    end
end

puts ans ? "Yes" : "No"