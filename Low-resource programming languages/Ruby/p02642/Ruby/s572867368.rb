require 'prime'
N = gets.chomp.to_i
aArr = gets.chomp.split(' ').map(&:to_i)

aArr.sort!

ans = N
until aArr.empty? do
    a1 = aArr.pop
    dup = aArr.count(a1)
    if dup > 0 then
        ans -= dup + 1
        dup.times { aArr.pop }
    else
        next if Prime.prime?(a1)
        aArr.each do |a2|
            if a1 % a2 == 0 then
                ans -= 1
                break
            end
        end
    end
end
puts ans
