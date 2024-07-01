#提出する
n = gets.to_i
arr = []
a = Hash.new(0)
n.times do |i|
    s = gets.chomp.split("")
    s = s.sort
    s = s.join()
    arr << s
    a[s] +=  1
end
ans = 0
a.each do |i|
    if i[1] >= 3
        ans += i[1]
    elsif i[1] == 2
        ans += 1
    end
end
puts ans