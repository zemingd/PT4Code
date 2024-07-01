n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
ans = 1
flag = false
border = 10 ** 18

a.each do |i|
    ans *= i
    if ans > border then
        flag = true
        break
    end
end

puts flag ? -1 : ans