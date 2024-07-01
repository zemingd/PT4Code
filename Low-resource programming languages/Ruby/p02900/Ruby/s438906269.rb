require 'prime'

a, b = gets.split.map(&:to_i)
num = 1
arr = []

ans = 0

(b/2).times do
    if num != 2 && num % 2 == 0
        num += 1
    else
        if a % num == 0 && b % num == 0 && num.prime?
            arr.push(num)
            num += 1
        else
            num += 1
        end
    end
end

puts arr.count + 1