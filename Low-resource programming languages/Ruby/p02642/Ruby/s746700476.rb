require 'prime'
N = gets.chomp.to_i
aArr = gets.chomp.split(' ').map(&:to_i)

ans = 0

N.times do |n1|
    ans += 1
    next if Prime.prime?(aArr[n1])
    N.times do |n2|
        next if n1 == n2
        if aArr[n1] % aArr[n2] == 0 then
            ans -= 1
            break
        end
    end
end

puts ans
