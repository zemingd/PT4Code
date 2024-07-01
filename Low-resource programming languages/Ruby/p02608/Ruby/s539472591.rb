n = gets.chomp.to_i
s = 1
t = 99
arr = Array.new((10 ** 4)*6,0)
(s..t).each do |x|
    (s..t).each do |y|
        (s..t).each do |z|
            ans = x ** 2 + y ** 2 + z ** 2 + x * y + y * z + x * z
            if ans <= 10 ** 4
            arr[ans+1] += 1
            end
        end
    end
end
#p arr[1..20]
arr.shift
#p arr[1..20]
i = 1
#p n
while true
    if i <= n
    puts arr[i]
    elsif i > n
        break
    end
    i += 1
end