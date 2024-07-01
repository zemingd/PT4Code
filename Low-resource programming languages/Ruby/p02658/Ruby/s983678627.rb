gets.to_i
num = gets.split.map(&:to_i)
ans = 1
flag = true
if num.include?(0)
    puts(0)
else
    num.map do |n|
        ans *= n
        if ans > (10 ** 18)
            puts("ans: #{ans}, #{10 ** 18}")
            flag = false
            break
        end
    end
    flag ? puts(ans) : puts(-1)
    # puts(10 ** 18)
end