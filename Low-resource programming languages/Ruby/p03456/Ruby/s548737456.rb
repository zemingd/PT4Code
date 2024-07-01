a, b = gets.split.map(&:to_s)
n = (a + b).to_i
ans = false
(1..320).each{|i|
    if i * i == n
        ans = true
    end
}
if ans
    puts "Yes"
else
    puts "No"
end
